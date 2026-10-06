<div id="top" align="center">

# Do Better Visual Representations Always Lead to Better End-to-End Autonomous Driving?

</div>


> [Zihao Zhang](https://github.com/Zizizi-hao), [Haochen Tian](https://github.com/hctian713), [Tianyu Li](https://sephyli.github.io/), [Changhui Jing](https://scholar.google.com/citations?hl=en&user=B4Nu6pAAAAAJ), [Jingliang He](),
> [Naisheng Ye](https://scholar.google.com/citations?hl=en&user=VO0yYFcAAAAJ), [Ziyuan Pu](https://scholar.google.com/citations?hl=en&user=EzCLa-4AAAAJ), [Zhenjie Yang](https://scholar.google.com/citations?hl=en&user=jVlRiUEAAAAJ)

> - 📧 Primary Contact: Zihao Zhang (zihao.zhang@opendrivelab.com)
> - 🖊️ Joint effort by SEU, OpenDriveLab at HKU, and SLAI.

---

<div id="top" align="center">
<p align="center">
  <img src="https://ik.imagekit.io/zizizihao/ViRA-Diffusion/teaser.jpg?updatedAt=1791253880365">
</p>
</div>

## Highlights 

- 🚗 **Planner-agnostic alignment:** ViRA improves driving across diverse end-to-end planners without changing their deployed architecture or inference cost.
- 🔍 **Target selection and supervision matter:** VFM target choice affects planning gains, while auxiliary perception supervision narrows performance differences across targets.
- 📈 **ViRA-Diffusion:** DINOv3 alignment enables 92.3 EPDMS on NAVSIM v2 navtest without auxiliary perception supervision.

## News
- **`[2026/10/7]`** We released our [paper]() on arXiv. 

## TODO List
- [x] Results and Demo release.
- [ ] Code release.
- [ ] Checkpoints release.

## Visualization of HUGSIM

<div id="top" align="center">
<p align="center">
  <img src="https://ik.imagekit.io/zizizihao/ViRA-Diffusion/hugsim-video.gif">
</p>
</div>

**(a) Car following: the lead vehicle brakes suddenly**

<div id="top" align="center">
<p align="center">
  <img src="https://ik.imagekit.io/zizizihao/ViRA-Diffusion/hugsim-video-2.gif">
</p>
</div>

**(b) Normal driving: a vehicle crosses in from the sidewalk**

## Acknowledgements

We acknowledge all the open-source contributors for the following projects to make this work possible:

- [NAVSIM](https://github.com/autonomousvision/navsim) | [HUGSIM](https://github.com/hyzhou404/HUGSIM) | [SimScale](https://github.com/OpenDriveLab/SimScale) | [DiffusionDrive](https://github.com/hustvl/DiffusionDrive) | [Rap](https://github.com/vita-epfl/RAP) 

- [DVGT](https://github.com/wzzheng/dvgt) | [VGGT](https://github.com/facebookresearch/vggt) | [DINOv3](https://github.com/facebookresearch/dinov3) | [SAM3](https://github.com/facebookresearch/sam3) | [DA3](https://github.com/bytedance-seed/depth-anything-3)



## License and Citation

All content in this repository is under the [Apache-2.0 license](https://www.apache.org/licenses/LICENSE-2.0).
The released data is based on [nuPlan](https://www.nuscenes.org/nuplan) and is under the [CC-BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/) license.

If any parts of our paper and code help your research, please consider citing us and giving a star to our repository.
