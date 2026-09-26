.class public Ltop/niunaijun/blackbox/fake/service/IWindowSessionProxy$AddToDisplay;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IWindowSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IWindowSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddToDisplay"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "addToDisplay"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 56
    array-length p0, p3

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_18

    aget-object v1, p3, v0

    if-nez v1, :cond_9

    goto :goto_15

    .line 60
    :cond_9
    instance-of v2, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_15

    .line 61
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :cond_15
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 64
    :cond_18
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IWindowSessionProxy.AddToDisplayAsUser (top.niunaijun.blackbox.fake.service.IWindowSessionProxy$AddToDisplayAsUser)
