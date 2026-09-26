.class public abstract Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub;
.super Landroid/os/Binder;
.source "IBUserManagerService.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_createUser:I = 0x3

.field static final TRANSACTION_deleteUser:I = 0x5

.field static final TRANSACTION_exists:I = 0x2

.field static final TRANSACTION_getUserInfo:I = 0x1

.field static final TRANSACTION_getUsers:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "top.niunaijun.blackbox.core.system.user.IBUserManagerService"

    invoke-virtual {p0, p0, v0}, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_4
    const-string v0, "top.niunaijun.blackbox.core.system.user.IBUserManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 58
    instance-of v1, v0, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService;

    if-eqz v1, :cond_13

    .line 59
    check-cast v0, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService;

    return-object v0

    .line 61
    :cond_13
    new-instance v0, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    const-string v0, "top.niunaijun.blackbox.core.system.user.IBUserManagerService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 71
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 74
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_16
    if-eq p1, v1, :cond_5d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3f

    const/4 v0, 0x4

    if-eq p1, v0, :cond_34

    const/4 v0, 0x5

    if-eq p1, v0, :cond_29

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 116
    :cond_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 117
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub;->deleteUser(I)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_6b

    .line 108
    :cond_34
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub;->getUsers()Ljava/util/List;

    move-result-object p0

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto :goto_6b

    .line 100
    :cond_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 101
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub;->createUser(I)Ltop/niunaijun/blackbox/core/system/user/BUserInfo;

    move-result-object p0

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_6b

    .line 91
    :cond_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 92
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub;->exists(I)Z

    move-result p0

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6b

    .line 82
    :cond_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 83
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub;->getUserInfo(I)Ltop/niunaijun/blackbox/core/system/user/BUserInfo;

    move-result-object p0

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_6b
    return v1
.end method

###### Class top.niunaijun.blackbox.core.system.user.IBUserManagerService.Stub.Proxy (top.niunaijun.blackbox.core.system.user.IBUserManagerService$Stub$Proxy)
