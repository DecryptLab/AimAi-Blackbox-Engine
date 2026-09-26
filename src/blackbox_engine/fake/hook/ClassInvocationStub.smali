.class public abstract Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;
.super Ljava/lang/Object;
.source "ClassInvocationStub.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;
.implements Ltop/niunaijun/blackbox/fake/hook/IInjectHook;


# static fields
.field public static final TAG:Ljava/lang/String; = "ClassInvocationStub"


# instance fields
.field private mBase:Ljava/lang/Object;

.field private final mMethodHookMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ltop/niunaijun/blackbox/fake/hook/MethodHook;",
            ">;"
        }
    .end annotation
.end field

.field private mProxyInvocation:Ljava/lang/Object;

.field private onlyProxy:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mMethodHookMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected addMethodHook(Ljava/lang/String;Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V
    .registers 3

    .line 102
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mMethodHookMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V
    .registers 3

    .line 98
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mMethodHookMap:Ljava/util/Map;

    invoke-virtual {p1}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected getBase()Ljava/lang/Object;
    .registers 1

    .line 42
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mBase:Ljava/lang/Object;

    return-object p0
.end method

.method protected getProxyInvocation()Ljava/lang/Object;
    .registers 1

    .line 38
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mProxyInvocation:Ljava/lang/Object;

    return-object p0
.end method

.method protected abstract getWho()Ljava/lang/Object;
.end method

.method protected initAnnotation(Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 73
    const-class v0, Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;

    if-eqz v0, :cond_22

    .line 75
    invoke-interface {v0}, Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;->value()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 78
    :try_start_14
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/fake/hook/MethodHook;

    invoke-virtual {p0, v0, v1}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->addMethodHook(Ljava/lang/String;Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    :cond_22
    :goto_22
    const-class v0, Ltop/niunaijun/blackbox/fake/hook/ProxyMethods;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/fake/hook/ProxyMethods;

    if-eqz v0, :cond_47

    .line 86
    invoke-interface {v0}, Ltop/niunaijun/blackbox/fake/hook/ProxyMethods;->value()[Ljava/lang/String;

    move-result-object v0

    .line 87
    array-length v1, v0

    const/4 v2, 0x0

    :goto_32
    if-ge v2, v1, :cond_47

    aget-object v3, v0, v2

    .line 89
    :try_start_36
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltop/niunaijun/blackbox/fake/hook/MethodHook;

    invoke-virtual {p0, v3, v4}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->addMethodHook(Ljava/lang/String;Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v3

    .line 91
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_47
    return-void
.end method

.method protected abstract inject(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public injectHook()V
    .registers 9

    .line 51
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->getWho()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mBase:Ljava/lang/Object;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mBase:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->getAllInterface(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mProxyInvocation:Ljava/lang/Object;

    .line 53
    iget-boolean v1, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->onlyProxy:Z

    if-nez v1, :cond_27

    .line 54
    iget-object v1, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mBase:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->inject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    :cond_27
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->onBindMethod()V

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 59
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_35
    if-ge v3, v1, :cond_3f

    aget-object v4, v0, v3

    .line 60
    invoke-virtual {p0, v4}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->initAnnotation(Ljava/lang/Class;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 62
    :cond_3f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ltop/niunaijun/blackbox/fake/hook/ScanClass;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/fake/hook/ScanClass;

    if-eqz v0, :cond_6a

    .line 64
    invoke-interface {v0}, Ltop/niunaijun/blackbox/fake/hook/ScanClass;->value()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_53
    if-ge v3, v1, :cond_6a

    aget-object v4, v0, v3

    .line 65
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_5d
    if-ge v6, v5, :cond_67

    aget-object v7, v4, v6

    .line 66
    invoke-virtual {p0, v7}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->initAnnotation(Ljava/lang/Class;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5d

    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    :cond_6a
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 107
    iget-object p1, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mMethodHookMap:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/fake/hook/MethodHook;

    if-eqz p1, :cond_29

    .line 108
    invoke-virtual {p1}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;->isEnable()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_29

    .line 116
    :cond_15
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mBase:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, p3}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;->beforeHook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    return-object v0

    .line 120
    :cond_1e
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mBase:Ljava/lang/Object;

    invoke-virtual {p1, p0, p2, p3}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;->hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 121
    invoke-virtual {p1, p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;->afterHook(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 110
    :cond_29
    :goto_29
    :try_start_29
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mBase:Ljava/lang/Object;

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_30

    return-object p0

    :catchall_30
    move-exception p0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method protected onBindMethod()V
    .registers 1

    return-void
.end method

.method protected onlyProxy(Z)V
    .registers 2

    .line 46
    iput-boolean p1, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->onlyProxy:Z

    return-void
.end method
