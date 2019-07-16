[casa 大神博客地址](https://casatwy.com/iOS-Modulization.html)  
基于Mediator模式和Target-Action模式  

优点：
1. 基于runtime，稳定可靠
2. 支持外部调用
3. 明确指定提供外部的服务，降低维护成本
4. 无侵入，只需要包一层target-action即可
缺点：  
1. CTMediator扩展包含少量硬编码