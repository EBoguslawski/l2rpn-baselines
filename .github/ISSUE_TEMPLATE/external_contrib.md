---
name: External contribution
about: Add an external contribution that many people will be able to use
title: ''
labels: external_contrib
assignees: ''

---

## Algorithm implementation
<!--Provide us with the code where your model is implemented-->

Ex: https://github.com/blablabla/myawesomemodel.git

Check your model follows the template code for l2rpn-baselines:

- [ ] it is freely available on github / gitlab
- [ ] it exports a function call exactly `evaluate` 
- [ ] it exports a class named like your github / gitlab (for example, if it is    
  hosted at https://github.com/YourName/MyAwesomeModel) then you need to be able to do something like `from MyAwesomeModel import MyAwesomeModel`). Once 
  included into l2rpn-baselines, it will be imported with `from l2rpn_baselines.MyAwesomeModel import MyAwesomeModel`

## License
<!-- Detail here the license that is applicable to your code. It will also be written in the documentation. -->

ex. I adopted for the MPL v2.0 license

## Short description
<!--This description will appear on the documentation-->


## Required packages (optional)
<!-- Write here the required packages need for your baselines.

If provided, it will be used to allow the use of your baseline easily by installing with
`pip install l2rpn-baselines[MyAwesomeModel]`
(eg. `pip install l2rpn-baselines[PPO_SB3]`)
-->

- grid2op version xx.yy.zz
- numpy version xx.yy.zz
- etc.

## Extra references (optional)
<!--You can link acamemic papers, experiment results with your contribution  -->
<!--You can also say on which environment your model has been tested and / or
on which it does not work. -->
