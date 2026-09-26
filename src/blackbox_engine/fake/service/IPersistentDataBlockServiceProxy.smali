.class public Ltop/niunaijun/blackbox/fake/service/IPersistentDataBlockServiceProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "IPersistentDataBlockServiceProxy.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "persistent_data_block"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 17
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "persistent_data_block"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 3

    .line 22
    invoke-static {}, Lblack/android/service/persistentdata/BRIPersistentDataBlockServiceStub;->get()Lblack/android/service/persistentdata/IPersistentDataBlockServiceStubStatic;

    move-result-object p0

    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "persistent_data_block"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p0, v0}, Lblack/android/service/persistentdata/IPersistentDataBlockServiceStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 27
    const-string p1, "persistent_data_block"

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/IPersistentDataBlockServiceProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onBindMethod()V
    .registers 6

    .line 37
    invoke-super {p0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->onBindMethod()V

    .line 38
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "write"

    invoke-direct {v0, v2, v1}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPersistentDataBlockServiceProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 39
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const/4 v1, 0x0

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 39
    new-array v3, v1, [B

    const-string v4, "read"

    invoke-direct {v0, v4, v3}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPersistentDataBlockServiceProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 40
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v3, "wipe"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPersistentDataBlockServiceProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 41
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v3, "getDataBlockSize"

    invoke-direct {v0, v3, v2}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPersistentDataBlockServiceProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 42
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v3, "getMaximumDataBlockSize"

    invoke-direct {v0, v3, v2}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPersistentDataBlockServiceProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 43
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v3, "setOemUnlockEnabled"

    invoke-direct {v0, v3, v2}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPersistentDataBlockServiceProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 44
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v2, "getOemUnlockEnabled"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPersistentDataBlockServiceProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    return-void
.end method
