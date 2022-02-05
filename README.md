

# GD32 Peripheral Access Crates

该仓库是从[stm32-rs](https://github.com/stm32-rs/stm32-rs)项目的b3a7186ea7c5a425e0a229b627265dc6a0085ea8提交切出而得到的。如果需要了解更多有关rust开发MCU嵌入式程序的生态，或者想对本项目进行贡献，可以观看下面的视频介绍，也可以阅读`stm32-rs`项目的说明文档。

This repo is a forked of [stm32-rs](https://github.com/stm32-rs/stm32-rs) at commit b3a7186ea7c5a425e0a229b627265dc6a0085ea8. If you want to learn more about the rust ecosystem in embedded and MCU develop, you can watch the following video, or you can visit the `stm32-rs` project.

由于GD32和STM32系列微处理器有很多相似之处，因此这个仓库应该尽量保持与`stm32-rs`在各方面上的一致。为了减少冗余，在`stm32-rs`项目Readme中出现过的基本概念在本仓库中将不再介绍，本说明文件仅介绍和`stm32-rs`不一致的地方。如果您还不熟悉相关概念，建议先阅读`stm32-rs`项目的说明文档。对于中文用户，您也可以观看下方的视频介绍，在视频中我会给大家快速串讲一下Rust在嵌入式开发领域的生态。

Since GD32 is similar to STM32, this repo should try to keep its content close to `stm32-rs`. In order to reduce redundancy, the concept mentioned in `stm32-rs` will not be write in this Readme again. You should visit and read `stm32-rs`'s document first if you are not familiar with the rust embedded ecosystem. If your Chinese is good enough, you can watch the following video and I will give a fast tutorial on rust embedded ecosystem.


## TODO（亟需各位开发者的协作贡献）
* 移植更多的芯片型号
* 完善svd的patch
* 完成从stm32-rs项目的迁移，主要是CD/CI相关。在把stm32-rs项目迁移过来时，删除了与CD/CI相关的内容



## License

Licensed under either of

- Apache License, Version 2.0 ([LICENSE-APACHE](LICENSE-APACHE) or http://www.apache.org/licenses/LICENSE-2.0)
- MIT license ([LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT)

at your option.

## Contribution

Unless you explicitly state otherwise, any contribution intentionally submitted
for inclusion in the work by you, as defined in the Apache-2.0 license, shall be
dual licensed as above, without any additional terms or conditions.
