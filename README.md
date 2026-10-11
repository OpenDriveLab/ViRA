

# Do Better Visual Representations Always Lead to Better End-to-End Autonomous Driving?

[![Paper](https://img.shields.io/badge/-Paper-B31B1B?logo=arxiv&amp;logoColor=white&amp;labelColor=555)](https://arxiv.org/abs/2610.09695)
[![ProjectPage](https://img.shields.io/badge/%20-Project_Page-E91E63?logo=data%3Aimage%2Fsvg%2Bxml%3Bbase64%2CPHN2ZwogIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICB3aWR0aD0iMjQiCiAgaGVpZ2h0PSIyNCIKICB2aWV3Qm94PSIwIDAgMjQgMjQiCiAgZmlsbD0ibm9uZSIKICBzdHJva2U9IndoaXRlIgogIHN0cm9rZS13aWR0aD0iMiIKICBzdHJva2UtbGluZWNhcD0icm91bmQiCiAgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIKPjxjaXJjbGUgY3g9IjEyIiBjeT0iMTIiIHI9IjEwIiAvPjxwYXRoIGQ9Ik0xMiAyYTE0LjUgMTQuNSAwIDAgMCAwIDIwIDE0LjUgMTQuNSAwIDAgMCAwLTIwIiAvPjxwYXRoIGQ9Ik0yIDEyaDIwIiAvPjwvc3ZnPg%3D%3D&logoColor=white&labelColor=555)](https://opendrivelab.com/ViRA/)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue)](https://github.com/OpenDriveLab/ViRA/blob/main/LICENSE) 



> [Zihao Zhang](https://github.com/Zizizi-hao), [Haochen Tian](https://github.com/hctian713), [Tianyu Li](https://sephyli.github.io/), [Changhui Jing](https://scholar.google.com/citations?hl=en&user=B4Nu6pAAAAAJ), [Jingliang He](),
> [Naisheng Ye](https://scholar.google.com/citations?hl=en&user=VO0yYFcAAAAJ), [Ziyuan Pu](https://scholar.google.com/citations?hl=en&user=EzCLa-4AAAAJ), [Zhenjie Yang](https://scholar.google.com/citations?hl=en&user=jVlRiUEAAAAJ)

> - 📧 Primary Contact: Zihao Zhang ([zihao.zhang@opendrivelab.com](mailto:zihao.zhang@opendrivelab.com))
> - 🖊️ Joint effort by SEU, OpenDriveLab at HKU, and SLAI.

---

![](https://ik.imagekit.io/zizizihao/ViRA_Diffusion/teaser.jpg?updatedAt=1791281459035)

## Highlights

- 🚗 **Planner-agnostic alignment:** ViRA improves driving across diverse end-to-end planners without changing their deployed architecture or inference cost.
- 🔍 **Target selection and supervision matter:** VFM target choice affects planning gains, while auxiliary perception supervision narrows performance differences across targets.
- 📈 **ViRA-Diffusion:** DINOv3 alignment enables 92.3 EPDMS on NAVSIM v2 navtest without auxiliary perception supervision.

## News

- `[2026/10/7]` We released our [paper](https://arxiv.org/abs/2610.09695) on arXiv.

## TODO List

- [x] Results and Demo release.
- [ ] Code release.
- [ ] Checkpoints release.

## Results

Camera-only. Rap* is our reimplementation with a different backbone and without the original data augmentation. HUGSIM is zero-shot: planners are trained only on NAVSIM.

<table>
<tr style="text-align: center;">
<th rowspan="2">Method</th>
<th rowspan="2">Decoder</th>
<th>NAVSIM v2 navtest</th>
<th>NAVSIM v2 navhard</th>
<th>HUGSIM</th>
</tr>
<tr style="text-align: center;">
<th>EPDMS</th>
<th>EPDMS</th>
<th>HD-Score</th>
</tr>
<tr>
<th colspan="5">Perception-based</th>
</tr>
<tr style="text-align: center;">
<td>TransFuser</td>
<td rowspan="2">Regression</td>
<td>83.6</td>
<td>27.6</td>
<td>22.1</td>
</tr>
<tr style="text-align: center;">
<td>TransFuser-ViRA</td>
<td><a href="./navsim_results/navtest/TransFuser-ViRA-DVGT.csv"><b>89.0</b></a> | +5.4</td>
<td><a href="./navsim_results/navhard/TransFuser-ViRA-DVGT.csv"><b>31.7</b></a> | +4.1</td>
<td><b>24.8</b> | +2.7</td>
</tr>
<tr style="text-align: center;">
<td>DiffusionDrive</td>
<td rowspan="2">Diffusion</td>
<td>84.5</td>
<td>30.5</td>
<td>22.2</td>
</tr>
<tr style="text-align: center;">
<td>DiffusionDrive-ViRA</td>
<td><a href="./navsim_results/navtest/DiffusionDrive-ViRA-DVGT.csv"><b>91.9</b></a> | +7.4</td>
<td><a href="./navsim_results/navhard/DiffusionDrive-ViRA-DVGT.csv"><b>35.8</b></a> | +5.3</td>
<td><b>28.6</b> | +6.4</td>
</tr>
<tr>
<th colspan="5">Perception-free</th>
</tr>
<tr style="text-align: center;">
<td>Rap*</td>
<td rowspan="2">Scoring</td>
<td>72.8</td>
<td>32.8</td>
<td>7.3</td>
</tr>
<tr style="text-align: center;">
<td>Rap*-ViRA</td>
<td><a href="./navsim_results/navtest/Rap-star-ViRA-DVGT.csv"><b>83.7</b></a> | +10.9</td>
<td><a href="./navsim_results/navhard/Rap-star-ViRA-DVGT.csv"><b>49.2</b></a> | +16.4</td>
<td><b>10.3</b> | +3.0</td>
</tr>
</table>

ViRA-Diffusion is DiffusionDrive trained with DINOv3 alignment and without auxiliary perception supervision.

<table>
<tr style="text-align: center;">
<th>Method</th>
<th>NAVSIM v2 navtest EPDMS</th>
</tr>
<tr style="text-align: center;">
<td>Epona</td>
<td>85.1</td>
</tr>
<tr style="text-align: center;">
<td>DiffusionDriveV2</td>
<td>87.5</td>
</tr>
<tr style="text-align: center;">
<td>Latent-WAM</td>
<td>89.3</td>
</tr>
<tr style="text-align: center;">
<td>DriveFuture</td>
<td>89.9</td>
</tr>
<tr style="text-align: center;">
<td>SparseDriveV2</td>
<td>90.1</td>
</tr>
<tr style="text-align: center;">
<td>Discrete-WAM</td>
<td>90.4</td>
</tr>
<tr style="text-align: center;">
<td><b>ViRA-Diffusion</b></td>
<td><a href="./navsim_results/navtest/ViRA-Diffusion.csv"><b>92.3</b></a></td>
</tr>
</table>

## Visualization of HUGSIM

![](https://ik.imagekit.io/zizizihao/ViRA_Diffusion/hugsim_video_1.gif?updatedAt=1791281800093)

**(a) Car following: the lead vehicle brakes suddenly**

![](https://ik.imagekit.io/zizizihao/ViRA_Diffusion/hugsim_video_2.gif?updatedAt=1791281786649)

**(b) Normal driving: a vehicle crosses in from the sidewalk**

## Acknowledgements

We acknowledge all the open-source contributors for the following projects to make this work possible:

- [NAVSIM](https://github.com/autonomousvision/navsim) | [HUGSIM](https://github.com/hyzhou404/HUGSIM) | [SimScale](https://github.com/OpenDriveLab/SimScale) | [DiffusionDrive](https://github.com/hustvl/DiffusionDrive) | [Rap](https://github.com/vita-epfl/RAP) 
- [DVGT](https://github.com/wzzheng/dvgt) | [VGGT](https://github.com/facebookresearch/vggt) | [DINOv3](https://github.com/facebookresearch/dinov3) | [SAM3](https://github.com/facebookresearch/sam3) | [DA3](https://github.com/bytedance-seed/depth-anything-3)

## License and Citation

All content in this repository is under the [Apache-2.0 license](https://www.apache.org/licenses/LICENSE-2.0).

If any parts of our paper and code help your research, please consider citing us and giving a star to our repository.