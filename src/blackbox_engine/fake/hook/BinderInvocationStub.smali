.class public abstract Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.super Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;
.source "BinderInvocationStub.java"

# interfaces
.implements Landroid/os/IBinder;


# instance fields
.field private mBaseBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;-><init>()V

    .line 31
    iput-object p1, p0, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    return-void
.end method

.method public dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    return-void
.end method

.method public getExtension()Landroid/os/IBinder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    invoke-static {v0}, Lblack/android/os/BRIBinder;->get(Ljava/lang/Object;)Lblack/android/os/IBinderContext;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/os/IBinderContext;->_check_getExtension()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 62
    :cond_e
    :try_start_e
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;
    :try_end_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_19} :catch_3c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 67
    instance-of v0, p0, Landroid/os/RemoteException;

    if-nez v0, :cond_39

    .line 70
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_36

    .line 73
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_2e

    .line 74
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 76
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IBinder.getExtension failed"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 71
    :cond_36
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 68
    :cond_39
    check-cast p0, Landroid/os/RemoteException;

    throw p0

    :catch_3c
    move-exception p0

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to access IBinder.getExtension"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    invoke-interface {p0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isBinderAlive()Z
    .registers 1

    .line 51
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    return p0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method protected onBindMethod()V
    .registers 1

    return-void
.end method

.method public pingBinder()Z
    .registers 1

    .line 46
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    invoke-interface {p0}, Landroid/os/IBinder;->pingBinder()Z

    move-result p0

    return p0
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .registers 2

    .line 83
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->getProxyInvocation()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IInterface;

    return-object p0
.end method

.method protected replaceSystemService(Ljava/lang/String;)V
    .registers 3

    .line 113
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/os/ServiceManagerStatic;->sCache()Ljava/util/Map;

    move-result-object v0

    .line 114
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .registers 3

    .line 108
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result p0

    return p0
.end method
