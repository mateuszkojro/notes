# Notes

# 2023-02-20

In the video <https://www.youtube.com/watch?v=s19G6n0UjsM> (slides: <https://jon.tsp.io/slides/rust-twosigma/>) Jon Gjengset presents his novel concurrent database called \textit{Noria} <https://github.com/mit-pdos/noria> an interesting way of implementing lockless map based on a swaping pointers approach (Rust implementation: <https://docs.rs/evmap/latest/evmap/>) - this allows for near linear scaling of the $reads/s$ with the number of cores used ($writes/s$ slowly goes down with number of cores)

# 2023-02-21

- Writing raw requests to a TCP server can be accomplished using:
	```bash
	printf "GET / HTTP/1.1\r\n\r\n" | nc google.com 80
	```
- Why does venture capital funding lead to devaliuation of a product: <https://pluralistic.net/2023/01/21/potemkin-ai/>

- Improving code performance video by Matt Parker (using graph theory and bit manipultation): <https://www.youtube.com/watch?v=c33AZBnRHks>

# 2023-02-22

- Connecting python with rust (both directions looks relativley easy): <https://pyo3.rs/v0.18.1/>
- Peeter praca inzynierska: <https://www.overleaf.com/project/63ab2e33e7df58af3574afc8>
- PowerBI data analysys tool that might be interesting (Tutorial: <https://www.linkedin.com/learning/power-bi-essential-training-3/overview-power-bi-concepts?autoSkip=true&autoplay=true&resume=false>) the alternative is tablou (looks like similar purpose)
- When to use different kinds of visualisations: <https://towardsdatascience.com/the-ultimate-cheat-sheet-on-tableau-charts-642bca94dde5>

# 2023-02-23

- Might be an interesting blog about programming: <https://drewdevault.com/> kernel hacker, wrote sourcehat

```rust
fn add(a: i32, b: i32) -> i32 {
	(a..=b).filter(|x| x % 2).sum();
}
```