---
title: Knowledge Base
description: "This is the knowledge base of PortNox MVP"
always_allow_html: yes    
---

<script type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.0/MathJax.js?config=TeX-AMS_CHTML">
</script>
<script type="text/x-mathjax-config">
  MathJax.Hub.Config({
    tex2jax: {
      inlineMath: [['$','$'], ['\\(','\\)']],
      processEscapes: true},
      jax: ["input/TeX","input/MathML","input/AsciiMath","output/CommonHTML"],
      extensions: ["tex2jax.js","mml2jax.js","asciimath2jax.js","MathMenu.js","MathZoom.js","AssistiveMML.js", "[Contrib]/a11y/accessibility-menu.js"],
      TeX: {
      extensions: ["AMSmath.js","AMSsymbols.js","noErrors.js","noUndefined.js"],
      equationNumbers: {
      autoNumber: "AMS"
      }
    }
  });
</script>

# Bullet Payment (i.e., Cashflow Driven Goal with a Single Cashflow)

Sometimes, a client goal involves one single cash inflow or outflow. This type of goal is a special form of cashflow-driven goal. Depending on the nature, we can create this type of goal in PortNox in the following ways:

For example, a client wants to spend \$2 million in _**real terms**_ in 20 years, with an annual inflation rate of 2% for the whole time horizon. This is a cashflow-driven goal where we set:

1. Inflation: 2%
2. Annual spending: 2000000
3. Staring year: 19
4. Duration in years: 1
5. Period: End of Period

In this way, there will be only _**one**_ cash outflow in Year 20 is calculated as  $2,000,000\times(1+0.02)^{20}=2,971,895.$

As another example, a client wants to spend $2 million in _**nominal terms**_ in 20 years, with an annual inflation rate of 2% for the whole time horizon. This is a cashflow-driven goal where we set:

1. Inflation: 2%
2. Annual spending: 0
3. Starting year: 0
4. Duration in years: 20
5. Period: End of Period
6. In the cashflow table, enter -2000000 in the last row for Year 20.

In this way, inflation will be ignored, even if we enter it in the goal settings (2%).
