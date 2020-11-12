## CS 512 Bonus
Optimize melee combat 2 project based on `Unity3d`

### Group Members:
`Yi Ren` (002269013)    `Wentao Lu` (002276355)

-------------------------------

### Dependency
- Microsoft [.NET](https://dotnet.microsoft.com/) Framework
- [Unity3d](https://unity3d.com/cn/get-unity/download)
- Jetbrains [Rider](https://www.jetbrains.com/rider/)
-------------------------------

### Video demo
Please check [Demo - Assignment1](https://youtu.be/z6nmkH_zKfg)  for more information.  

### Part 0 - Result and system specification
<div align=center><img src="https://github.com/Grindewald1900/General-notes/blob/master/Image/Game/3-3.png?raw=true" width="60%" height="60%"></div>  
<br></br>

<div align=center><img src="https://github.com/Grindewald1900/General-notes/blob/master/Image/Game/3-5.png?raw=true" width="60%" height="60%"></div>  
<br></br>

### Part 1 - Rearrange collider
In this part, we don't need all the colliders provided, so we deleted redundant colliders of character, and replaced some expensive colliders with ordinary ones. 
Finally, only two colliders exist to detect the collision between weapon and character:  
`Collider-1`: for human body of character.  
`Collider-2`: for front part of weapon. 
<div align=center><img src="https://github.com/Grindewald1900/General-notes/blob/master/Image/Game/3-1.png?raw=true" width="60%" height="60%"></div>  
<br></br>

### Part 2 - Use Baked Global Illumination
<div align=center><img src="https://github.com/Grindewald1900/General-notes/blob/master/Image/Game/3-2.png?raw=true" width="60%" height="60%"></div>  
<br></br>


### Part 3 - Code reconstruction
In this part, we reconstructed some code of `Melee.cs`, since we've deleted some redundant colliders. Also, we found method `OnTriggerStay()` abnormally expensive. So
we deprecated `OnTrigger` method in`Melee.cs` , which means we don't need to invoke the collision callback function every time our colliders have collisons with each other. Instead,
we use `Vector3.Distance()` to detect the distance between one character and its opponent.  
**Melee.cs**  
```C#
 private void FixedUpdate()
    {
        if(!currentSeeking) return;
        var distance = Vector3.Distance(transform.position, currentSeeking.transform.position);
        if (distance < 2.5)
        {
            agent.isStopped = true;
            anim.SetBool("walk", false);
            anim.SetBool("attack_02", true);
            var targetRotation = Quaternion.LookRotation(currentSeeking.transform.position - transform.position);
            float str = Mathf.Min(2f * Time.deltaTime, 1);
            transform.rotation = Quaternion.Lerp(transform.rotation, targetRotation, str);
        }
        else
        {
            agent.destination = currentSeeking.transform.position;
            agent.isStopped = false;
        }
    }
```

### Part 4 - Use Object Pool to Generate blood object.
In this part, we implemented an object pool for blood object, which generate one red blood cube when weapon collides with enemy collider. Also, the blood will disappear after 3 sec.
In this way, thousands of blood object could be reused.  

<div align=center><img src="https://github.com/Grindewald1900/General-notes/blob/master/Image/Game/3-4.png?raw=true" width="60%" height="60%"></div>  
<br></br>  

**BloodObjectPool.cs**  
```C#
 private void Awake()
    {
        SharedInstance = this;
        poolBulletAmount = 1000;
    }

    // Start is called before the first frame update
    private void Start()
    {
        bloodList = new List<GameObject>();
        for (var i = 0; i < poolBulletAmount; i++)
        {
            var blood = Instantiate(objectToPool);
            blood.gameObject.SetActive(false);
            bloodList.Add(blood);
        }
    }

    public GameObject GetPoolObjects()
    {
        foreach (var t in bloodList)
            if (!t.gameObject.activeInHierarchy)
                return t;

        return null;
    }
```

**Blood.cs**  
```C#
public class Blood : MonoBehaviour
{
    private float time;
    // Start is called before the first frame update
    private void FixedUpdate()
    {
        time += Time.fixedDeltaTime;
        if (time > 3)
        {
            gameObject.SetActive(false);
            time = 0;
        }
    }
}
```
