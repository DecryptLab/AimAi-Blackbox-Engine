.class public abstract Ltop/niunaijun/blackbox/core/IBActivityThread$Stub;
.super Landroid/os/Binder;
.source "IBActivityThread.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/IBActivityThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/IBActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/IBActivityThread$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_acquireContentProviderClient:I = 0x5

.field static final TRANSACTION_bindApplication:I = 0x2

.field static final TRANSACTION_finishActivity:I = 0x8

.field static final TRANSACTION_getActivityThread:I = 0x1

.field static final TRANSACTION_handleNewIntent:I = 0x9

.field static final TRANSACTION_peekService:I = 0x6

.field static final TRANSACTION_registerBinderCaller:I = 0x3

.field static final TRANSACTION_scheduleReceiver:I = 0xa

.field static final TRANSACTION_stopService:I = 0x7

.field static final TRANSACTION_unregisterBinderCaller:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 60
    const-string v0, "top.niunaijun.blackbox.core.IBActivityThread"

    invoke-virtual {p0, p0, v0}, Ltop/niunaijun/blackbox/core/IBActivityThread$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Ltop/niunaijun/blackbox/core/IBActivityThread;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 71
    :cond_4
    const-string v0, "top.niunaijun.blackbox.core.IBActivityThread"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 72
    instance-of v1, v0, Ltop/niunaijun/blackbox/core/IBActivityThread;

    if-eqz v1, :cond_13

    .line 73
    check-cast v0, Ltop/niunaijun/blackbox/core/IBActivityThread;

    return-object v0

    .line 75
    :cond_13
    new-instance v0, Ltop/niunaijun/blackbox/core/IBActivityThread$Stub$Proxy;

    invoke-direct {v0, p0}, Ltop/niunaijun/blackbox/core/IBActivityThread$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 84
    const-string v0, "top.niunaijun.blackbox.core.IBActivityThread"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 85
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 88
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_16
    packed-switch p1, :pswitch_data_ae

    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 171
    :pswitch_1e
    sget-object p1, Ltop/niunaijun/blackbox/entity/am/ReceiverData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/core/IBActivityThread$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/entity/am/ReceiverData;

    .line 172
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/IBActivityThread$Stub;->scheduleReceiver(Ltop/niunaijun/blackbox/entity/am/ReceiverData;)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_ac

    .line 161
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 163
    sget-object p4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Ltop/niunaijun/blackbox/core/IBActivityThread$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/IBActivityThread$Stub;->handleNewIntent(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_ac

    .line 153
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 154
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/IBActivityThread$Stub;->finishActivity(Landroid/os/IBinder;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_ac

    .line 145
    :pswitch_4c
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/core/IBActivityThread$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/IBActivityThread$Stub;->stopService(Landroid/content/Intent;)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_ac

    .line 136
    :pswitch_5b
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/core/IBActivityThread$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/IBActivityThread$Stub;->peekService(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_ac

    .line 127
    :pswitch_6e
    sget-object p1, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/core/IBActivityThread$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ProviderInfo;

    .line 128
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/IBActivityThread$Stub;->acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;

    move-result-object p0

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_ac

    .line 119
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 120
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/IBActivityThread$Stub;->unregisterBinderCaller(I)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_ac

    .line 109
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 112
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/IBActivityThread$Stub;->registerBinderCaller(II)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_ac

    .line 102
    :pswitch_9b
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/core/IBActivityThread$Stub;->bindApplication()V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_ac

    .line 95
    :pswitch_a2
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/core/IBActivityThread$Stub;->getActivityThread()Landroid/os/IBinder;

    move-result-object p0

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :goto_ac
    return v1

    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_a2
        :pswitch_9b
        :pswitch_8c
        :pswitch_81
        :pswitch_6e
        :pswitch_5b
        :pswitch_4c
        :pswitch_41
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method

###### Class top.niunaijun.blackbox.core.IBActivityThread.Stub.Proxy (top.niunaijun.blackbox.core.IBActivityThread$Stub$Proxy)
