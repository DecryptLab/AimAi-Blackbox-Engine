.class public abstract Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService$Stub;
.super Landroid/os/Binder;
.source "IBNotificationManagerService.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_cancelNotificationWithTag:I = 0x9

.field static final TRANSACTION_createNotificationChannel:I = 0x4

.field static final TRANSACTION_createNotificationChannelGroup:I = 0x6

.field static final TRANSACTION_deleteNotificationChannel:I = 0x5

.field static final TRANSACTION_deleteNotificationChannelGroup:I = 0x7

.field static final TRANSACTION_enqueueNotificationWithTag:I = 0x8

.field static final TRANSACTION_getNotificationChannel:I = 0x1

.field static final TRANSACTION_getNotificationChannelGroups:I = 0x3

.field static final TRANSACTION_getNotificationChannels:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "top.niunaijun.blackbox.core.system.notification.IBNotificationManagerService"

    invoke-virtual {p0, p0, v0}, Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 68
    :cond_4
    const-string v0, "top.niunaijun.blackbox.core.system.notification.IBNotificationManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 69
    instance-of v1, v0, Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService;

    if-eqz v1, :cond_13

    .line 70
    check-cast v0, Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService;

    return-object v0

    .line 72
    :cond_13
    new-instance v0, Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 81
    const-string v0, "top.niunaijun.blackbox.core.system.notification.IBNotificationManagerService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 82
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 85
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_16
    packed-switch p1, :pswitch_data_cc

    .line 191
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 180
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 185
    invoke-virtual {p0, p1, p4, p2}, Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService$Stub;->cancelNotificationWithTag(ILjava/lang/String;I)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_ca

    .line 166
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 170
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 173
    invoke-virtual {p0, p1, p4, v0, p2}, Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService$Stub;->enqueueNotificationWithTag(ILjava/lang/String;Landroid/app/Notification;I)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_ca

    .line 156
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 159
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService$Stub;->deleteNotificationChannelGroup(Ljava/lang/String;I)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_ca

    .line 146
    :pswitch_5d
    sget-object p1, Landroid/app/NotificationChannelGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannelGroup;

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 149
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService$Stub;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;I)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_ca

    .line 136
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 139
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService$Stub;->deleteNotificationChannel(Ljava/lang/String;I)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_ca

    .line 126
    :pswitch_7f
    sget-object p1, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 129
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService$Stub;->createNotificationChannel(Landroid/app/NotificationChannel;I)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_ca

    .line 115
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 118
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService$Stub;->getNotificationChannelGroups(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto :goto_ca

    .line 104
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 107
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService$Stub;->getNotificationChannels(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto :goto_ca

    .line 93
    :pswitch_b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 96
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService$Stub;->getNotificationChannel(Ljava/lang/String;I)Landroid/app/NotificationChannel;

    move-result-object p0

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_ca
    return v1

    nop

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_b8
        :pswitch_a5
        :pswitch_92
        :pswitch_7f
        :pswitch_70
        :pswitch_5d
        :pswitch_4e
        :pswitch_32
        :pswitch_1e
    .end packed-switch
.end method

###### Class top.niunaijun.blackbox.core.system.notification.IBNotificationManagerService.Stub.Proxy (top.niunaijun.blackbox.core.system.notification.IBNotificationManagerService$Stub$Proxy)
