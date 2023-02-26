# Notes

## 2023-02-20

In the video <https://www.youtube.com/watch?v=s19G6n0UjsM> (slides: <https://jon.tsp.io/slides/rust-twosigma/>) Jon Gjengset presents his novel concurrent database called \textit{Noria} <https://github.com/mit-pdos/noria> an interesting way of implementing lockless map based on a swaping pointers approach (Rust implementation: <https://docs.rs/evmap/latest/evmap/>) - this allows for near linear scaling of the $reads/s$ with the number of cores used ($writes/s$ slowly goes down with number of cores)

## 2023-02-21

- Writing raw requests to a TCP server can be accomplished using:
 ```bash
	printf "GET / HTTP/1.1\r\n\r\n" | nc google.com 80
```
- Why does venture capital funding lead to devaliuation of a product: <https://pluralistic.net/2023/01/21/potemkin-ai/>

- Improving code performance video by Matt Parker (using graph theory and bit manipultation): <https://www.youtube.com/watch?v=c33AZBnRHks>

## 2023-02-22

- Connecting python with rust (both directions looks relativley easy): <https://pyo3.rs/v0.18.1/>
- Peeter praca inzynierska: <https://www.overleaf.com/project/63ab2e33e7df58af3574afc8>
- PowerBI data analysys tool that might be interesting (Tutorial: <https://www.linkedin.com/learning/power-bi-essential-training-3/overview-power-bi-concepts?autoSkip=true&autoplay=true&resume=false>) the alternative is tablou (looks like similar purpose)
- When to use different kinds of visualisations: <https://towardsdatascience.com/the-ultimate-cheat-sheet-on-tableau-charts-642bca94dde5>

## 2023-02-23

- Might be an interesting blog about programming: <https://drewdevault.com/> kernel hacker, wrote sourcehat

## 2023-02-24

Found out new things I should read about at some point:
- Fuzzy logic (non binary) - <https://en.wikipedia.org/wiki/Fuzzy_logic> moze zostac uzyta do rozwiazywania logicznych paradoksow (Sorties paradox, ship of Theseus)

Also found some articles about quantum state preparation:

- <https://www.nature.com/articles/s41598-021-85474-1#Sec2>
- <https://arxiv.org/abs/1003.5760>

Google has a quantum AI campus and some reaserch positions that require you to relocate to switzerland or US

- <https://quantumai.google/learn/lab>

Google careers site: <https://careers.google.com/>
Google summer of code 2023:  <https://summerofcode.withgoogle.com/>

Artilce about progress on quatum error correction at google: <https://blog.google/inside-google/message-ceo/our-progress-toward-quantum-error-correction/>

Reset ssh-key for a given host:
```bash
ssh-keygen -R <host>
```

## 2023-02-25

### Interview preparation

- What is strategy pattern
- What is iteratoe pattern

#### Find the longest non repeating substring

Dumb approach is to just make it qubuic

Smart approachess:
1. Saving last seen position of a char in hashmap:
```c++
    int LenghtOfLongestSubstringHashmap(std::string s) {
      std::unordered_map<char, int> last_seen;
      int max_len = 0;
      int start = 0;

      for (int i = 0 ; i < s.size(); i++) {
        char znak = s[i];
        auto last = last_seen.find(znak);
        if (last != last_seen.end() && last_seen[znak] >= start) {
          max_len = std::max(max_len, i - start);
          start = last_seen[znak] + 1;
        }
        last_seen[znak] = i;
      }

      return std::max(max_len, (int)s.size() - start);
    }
```



2. Two pointer
```c++
    int LenghtOfLongestSubstringTwoPointer(std::string s) {

    }
```

Simle way of making code blocks in latex:
```tex
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}

\lstset{frame=tb,
  language=Java,
  aboveskip=3mm,
  belowskip=3mm,
  showstringspaces=false,
  columns=flexible,
  basicstyle={\small\ttfamily},
  numbers=none,
  numberstyle=\tiny\color{gray},
  keywordstyle=\color{blue},
  commentstyle=\color{dkgreen},
  stringstyle=\color{mauve},
  breaklines=true,
  breakatwhitespace=true,
  tabsize=3
}
\begin{lstlisting}
int main() {
  return 0;
}
\end{lstlisting}
```
Problems i didn't finish:

- <https://leetcode.com/problems/first-missing-positive/description/> - very hard
- <https://leetcode.com/problems/smallest-number-in-infinite-set/> - idk yet looks kinda simple


## 2023-02-26

- The guy that hijcaked the plane and jumped off of it with the cash never to be found: <https://en.wikipedia.org/wiki/D._B._Cooper>
- The guy that stole the jewels from Vienna museum: <https://en.wikipedia.org/wiki/Gerald_Blanchard>
- Sweedish big heist: <https://en.wikipedia.org/wiki/Nationalmuseum_robbery>












