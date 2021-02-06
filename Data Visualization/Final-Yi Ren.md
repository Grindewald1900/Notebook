### CS 503 Final Exam
#### `Yi Ren` (002269013) 
#### `Email` yren19@ubishops.ca

### Dependency
- Jupyter Notebook
- Python 3.7.4
- matplotlib
- statistics
- numpy
- pandas
- math

### Initial question
According to this dataset, we're interested in what makes an athlete succeed(win a medal). First of all, we have to point out that the dataset contains different kinds of `Sport`. In this way, we need to divide the dataset into several pieces by their `Sport` name, in order to compare the data in a reasonable range. 

```Python
import matplotlib.pyplot as plt
from statistics import mean 
import numpy as np
import pandas as pd
import math
```

```Python
# Magic function,  sets the backend of matplotlib to the 'inline' backend
%matplotlib inline 
# Set some graph details, such as size, dp
# plt.rcParams["figure.figsize"] = (16,12)
# plt.rcParams["figure.dpi"] = 120
# sns.set(style="ticks", color_codes=True)
```

### Basic data info
```Python
# define some titles
usecols = ["Name", "Sex", "Age", 'Height', 'Weight', 'Team', 'Year', 'Sport', 'Medal']
# read data from csv
df = pd.read_csv('athlete_events.csv', usecols=usecols)
# set index as Name
df.set_index("Name", inplace=True)
# Returns a new DataFrame sorted by label
df = df.sort_index()
# Get the first 20 rows.
df.head(30)
```
<div align=center><img src="https://github.com/Grindewald1900/General-notes/blob/master/Image/Python/1.png?raw=true" width="80%" height="80%"></div>  <br></br>

```Python
df.info()
```
```Bash
<class 'pandas.core.frame.DataFrame'>
Index: 271116 entries,   Gabrielle Marie "Gabby" Adcock (White-) to zzet nce
Data columns (total 8 columns):
 #   Column  Non-Null Count   Dtype  
---  ------  --------------   -----  
 0   Sex     271116 non-null  object 
 1   Age     261642 non-null  float64
 2   Height  210945 non-null  float64
 3   Weight  208241 non-null  float64
 4   Team    271116 non-null  object 
 5   Year    271116 non-null  int64  
 6   Sport   271116 non-null  object 
 7   Medal   39783 non-null   object 
dtypes: float64(3), int64(1), object(4)
memory usage: 18.6+ MB
```

```Python
# Generate descriptive statistics.
df.describe()
```
<div align=center><img src="https://github.com/Grindewald1900/General-notes/blob/master/Image/Python/2.png?raw=true" width="40%" height="40%"></div>  <br></br>


### Data pre-processing
As we can see, we have 10^6 scale of dataset, and some of them are unnecessary or redundant. So we need to apply some preprocessing to the dataset prior to our analysis.  
* Remove some redundant columns, for instance, `NOC` has the same meaning with `Team`.   
* Remove some rows with missing values. According to dataframe info, quite a few athletes have no value for their `Height` or `Weight`, which could be useless for the further analysis.

```Python
df = df[df['Height'].notna()]
df = df[df['Weight'].notna()]
df.shape
```
```Bash
(206853, 8)
```

```Python
df = df.sort_values(['Sex', 'Sport'])
df.head(30)
```
<div align=center><img src="https://github.com/Grindewald1900/General-notes/blob/master/Image/Python/3.png?raw=true" width="80%" height="80%"></div>  <br></br>

### Visualization analysis 1

For the question we posed, we believe that `Age` is a key attribute to win the medal. It's obvious that athletes meet their Peak period at a certain age. In their Peak period, they have the most powerful somatic function, and seems more likely to win the game. So we can calculate the average age for the winner of each game. 

```Python
age_list1 = list()
age_list2 = list()
sports = df.Sport.unique()
width = 0.7
pos = np.arange(0, len(sports) * 2 - 1, 2)
print(length)
print(sports)
```
```Bash
56
['Alpine Skiing' 'Archery' 'Athletics' 'Badminton' 'Basketball'
 'Beach Volleyball' 'Biathlon' 'Bobsleigh' 'Boxing' 'Canoeing'
 'Cross Country Skiing' 'Curling' 'Cycling' 'Diving' 'Equestrianism'
 'Fencing' 'Figure Skating' 'Football' 'Freestyle Skiing' 'Golf'
 'Gymnastics' 'Handball' 'Hockey' 'Ice Hockey' 'Judo' 'Luge'
 'Modern Pentathlon' 'Rhythmic Gymnastics' 'Rowing' 'Rugby Sevens'
 'Sailing' 'Shooting' 'Short Track Speed Skating' 'Skeleton' 'Ski Jumping'
 'Snowboarding' 'Softball' 'Speed Skating' 'Swimming'
 'Synchronized Swimming' 'Table Tennis' 'Taekwondo' 'Tennis'
 'Trampolining' 'Triathlon' 'Volleyball' 'Water Polo' 'Weightlifting'
 'Wrestling' 'Art Competitions' 'Baseball' 'Lacrosse' 'Motorboating'
 'Nordic Combined' 'Rugby' 'Tug-Of-War']
```
```Python
# Calculate average age for each sport
for sp in sports:
    select_all = df.loc[df['Sport'] == sp]
    select_medal = df.loc[(df['Sport'] == sp) & (df['Medal'].notna())]
    age_list1.append(select_all['Age'].mean())
    if math.isnan(select_medal['Age'].mean()):
        age_list2.append(select_all['Age'].mean())
    else:
        age_list2.append(select_medal['Age'].mean())

fig, ax = plt.subplots(1)
fig.set_size_inches(20,10)

ax.bar(pos, age_list1, width=width, label="ALL", color = 'lightpink')
ax.bar(pos+width, age_list2, width=width, label="MEDAL",  color = 'red')

ax.set_ylabel('Age', fontsize=14)
ax.set_xlabel('Sports', fontsize=14)
ax.set_xticks(pos)
ax.set_xticklabels(sports)
ax.legend(['All athletes', 'Medal athletes'])
plt.title('Athletes age of each sports', fontsize=24, y=1.02)
plt.xticks(rotation=90,  fontsize=10)
```
<div align=center><img src="https://github.com/Grindewald1900/General-notes/blob/master/Image/Python/4.png?raw=true" width="80%" height="80%"></div>  <br></br>

```Python
var1 = np.var(age_list1)
var2 = np.var(age_list2)
print("Variance of all athletes: ", var1)
print("Variance of medal athletes: ", var2)
print("Mean of medal age: ", mean(age_list2))
```
```Bash
Variance of all athletes:  10.643843313465505
Variance of medal athletes:  8.28080357256714
Mean of medal age:  26.04228520795125
```

As shown in the bar graph, it's not obvious that winner athletes has relation with their `Age`, however, we noticed that the average ages of winners are more likely to converge to 26 (Average age of athletes who win a medal). So we calculated the **variance** of `Age`, it turned out that the winners' age has smaller variance, compared to all the athletes in the same sport. In this way, we can conclude that athletes with medium age are more likely to win. And that also make sence, because young athletes may be lack of experience and old athletes tend to lack stamina.  
However, this graph doesn't take `Year` into account. For example, the average `Age` of athletes of 1930s and 2000s could be quite different. 

### Visualization analysis 2
We guess that athletes' competitiveness is related to their body size.  

```Python
avg1, avg2 = [178, 75]
sports = df.Sport.unique()
list_height_all = list()
list_height_medal = list()
list_weight_all = list()
list_weight_medal = list()

# Calculate average height and weight for each sport
for sp in sports:
    select_all = df.loc[(df['Sport'] == sp)& (df['Sex'] == 'M')]
    select_medal = df.loc[(df['Sport'] == sp) & (df['Medal'].notna()) & (df['Sex'] == 'M')]
    
    if math.isnan(select_all['Height'].mean()):
        list_height_all.append(avg1)    
    else:
        list_height_all.append(select_all['Height'].mean())
        
    if math.isnan(select_all['Weight'].mean()):
        list_weight_all.append(avg2)    
    else:
        list_weight_all.append(select_all['Weight'].mean())
    
    if math.isnan(select_medal['Height'].mean()):
        list_height_medal.append(avg1)    
    else:
        list_height_medal.append(select_medal['Height'].mean())
        
    if math.isnan(select_medal['Weight'].mean()):
        list_weight_medal.append(avg2)    
    else:
        list_weight_medal.append(select_medal['Weight'].mean())
# Calculate linear parameters       
m1,b1 = np.polyfit(list_height_all, list_weight_all, 1)
m2,b2 = np.polyfit(list_height_medal, list_weight_medal, 1)

fit_x = np.arange(165,200)
fit_y1 = m1*fit_x + b1
fit_y2 = m2*fit_x + b2

fig = plt.gcf()
ax = plt.gca()

fig.set_size_inches(18.5, 10.5)
ax.plot(fit_x, fit_y1, 'y-', c = 'coral')
ax.plot(fit_x, fit_y2, 'y-', c = 'teal')
plt.scatter(list_height_all, list_weight_all, c = 'coral')
plt.scatter(list_height_medal, list_weight_medal, c = 'teal')

plt.title('Linear regression of athlete\'s average height and weight(Male)', fontsize=24, y=1.02)
plt.legend(['All athletes', 'Medal athletes'])
plt.xlabel("Athlete hieight", fontsize=14)
plt.ylabel("Athlete weight", fontsize=14)
```
<div align=center><img src="https://github.com/Grindewald1900/General-notes/blob/master/Image/Python/5.png?raw=true" width="80%" height="80%"></div>  <br></br>

As shown in the scatter graph, we hope to find the relation between athletes' `Height` and `Weight`. So we scattered the average height and weight for each sports, obviously we can see that they have linear relation. So we implemented the linear regression for our scatterd data, and we made the conclusion that athletes win the medals are more likely to have medium build, which means the winners keep a better balance between height and weight.  
However, this graph obscured `Year` and `NOC`, data source of this analysis are simply the overall average age of all `Year` and `NOC`. As mentioned above, athletes from different year and contries may vary.

### Visualization analysis 3
While athletes need to keep a good balance of height and weight, for most sport games, we believe they are more likely to win the medal if they have larger body size.

```Python
df = df.sort_values(['Year', 'Sport'])
df.head(20)
```
<div align=center><img src="https://github.com/Grindewald1900/General-notes/blob/master/Image/Python/6.png?raw=true" width="80%" height="80%"></div>  <br></br>

```Python
avg1, avg2 = [175, 73]
year = df.Year.unique()
sports = df.Sport.unique()
colors = ['darkorange', 'crimson', 'bisque', 'lightpink']
labels = ['Male winner', 'Female winner', 'Male athlete', 'Female athlete']
list_all = list()

def getData(num):
    if math.isnan(num):
        return 165
    else:
        return num
    
for yr in year:
    list_height = list()
    select_medal_male = df.loc[(df['Year'] == yr)  & (df['Sex'] == 'M') & (df['Medal'].notna())]
    select_medal_female = df.loc[(df['Year'] == yr)  & (df['Sex'] == 'F') & (df['Medal'].notna())]
    select_all_male = df.loc[(df['Year'] == yr)  & (df['Sex'] == 'M')]
    select_all_female = df.loc[(df['Year'] == yr)  & (df['Sex'] == 'F')]
    avg_height1 = getData(select_medal_male['Height'].mean())
    avg_height2 = getData(select_medal_female['Height'].mean())
    avg_height3 = getData(select_all_male['Height'].mean())
    avg_height4 = getData(select_all_female['Height'].mean())
    list_all.append([avg_height1, avg_height2, avg_height3, avg_height4])

fig = plt.gcf()
ax = plt.gca()

for l in list_all:
    for item in l:
        if item == 0:
            break
        plt.scatter(x=year[list_all.index(l)], y=item, c=colors[l.index(item)])
for i in range(4):
    list_year = list()    
    for item in list_all:
        list_year.append(item[i])
    plt.plot(year, list_year, c=colors[i], alpha=0.5, label=labels[i])
    
fig.set_size_inches(18.5, 10.5)
# Set X-axis grid
ax.xaxis.grid(True, linestyle='--')
# Set Y-axis grid
ax.yaxis.grid(True, linestyle='--')
plt.xlabel("Year", fontsize=14)
plt.ylabel("Athlete height", fontsize=14)
plt.title( 'Athletes height in different period', fontsize=24, y=1.02)
plt.legend()
```

<div align=center><img src="https://github.com/Grindewald1900/General-notes/blob/master/Image/Python/7.png?raw=true" width="80%" height="80%"></div>  <br></br>

As shown in the line chart, the average `Height` of winners is obviously larger than the overall `Height`. That means taller athletes seems more likely to win a medal. Also we can find the fact that the average `Height` of athletes is getting larger from 1900 to 2000. Hence, we could know that athletic ability is related to human's body size.
However, this analysis obscured a key attribute `Sport`. Athletes of different sports have quite different height, also some sports have few physical confrontation and their athletes do not rely on physical constitution. Hence, some redundant values are accounted in this analysis.

### Conclusion
According to our data analysis, we can draw the conclusion:   
* For most of sports, athletes has the 'Peak period', which is around 26.
* Height and weight balance is important, unbefitting balance lead to athletes lose competitiveness.  
* 'Bigger' athletes are more competitive, because they have more powerful body, so that they're more likely to win the physical confrontation. 

