.class public abstract Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;
.super Landroid/os/Binder;
.source "IBActivityManagerService.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_acquireContentProviderClient:I = 0xf

.field static final TRANSACTION_bindService:I = 0xa

.field static final TRANSACTION_cancelIntentSender:I = 0x20

.field static final TRANSACTION_consumeOAuthRedirect:I = 0x4

.field static final TRANSACTION_createPendingIntentData:I = 0x1e

.field static final TRANSACTION_dispatchPendingActivity:I = 0x25

.field static final TRANSACTION_dispatchPendingBroadcast:I = 0x27

.field static final TRANSACTION_dispatchPendingService:I = 0x26

.field static final TRANSACTION_finishBroadcast:I = 0x19

.field static final TRANSACTION_getCallingActivity:I = 0x1b

.field static final TRANSACTION_getCallingPackage:I = 0x1a

.field static final TRANSACTION_getFlagsForIntentSender:I = 0x24

.field static final TRANSACTION_getLaunchedFromPackage:I = 0x1c

.field static final TRANSACTION_getLaunchedFromUid:I = 0x1d

.field static final TRANSACTION_getPackageForIntentSender:I = 0x21

.field static final TRANSACTION_getRunningAppProcesses:I = 0x16

.field static final TRANSACTION_getRunningServices:I = 0x17

.field static final TRANSACTION_getTypeForIntentSender:I = 0x23

.field static final TRANSACTION_getUidForIntentSender:I = 0x22

.field static final TRANSACTION_initProcess:I = 0x1

.field static final TRANSACTION_onActivityCreated:I = 0x12

.field static final TRANSACTION_onActivityDestroyed:I = 0x14

.field static final TRANSACTION_onActivityResumed:I = 0x13

.field static final TRANSACTION_onFinishActivity:I = 0x15

.field static final TRANSACTION_onServiceDestroy:I = 0xe

.field static final TRANSACTION_onServiceUnbind:I = 0xd

.field static final TRANSACTION_peekService:I = 0x11

.field static final TRANSACTION_registerIntentSender:I = 0x1f

.field static final TRANSACTION_registerOAuthRedirect:I = 0x3

.field static final TRANSACTION_restartProcess:I = 0x2

.field static final TRANSACTION_scheduleBroadcastReceiver:I = 0x18

.field static final TRANSACTION_sendBroadcast:I = 0x10

.field static final TRANSACTION_startActivities:I = 0x7

.field static final TRANSACTION_startActivity:I = 0x5

.field static final TRANSACTION_startActivityAms:I = 0x6

.field static final TRANSACTION_startService:I = 0x8

.field static final TRANSACTION_stopService:I = 0x9

.field static final TRANSACTION_stopServiceToken:I = 0xc

.field static final TRANSACTION_unbindService:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 171
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 172
    const-string v0, "top.niunaijun.blackbox.core.system.am.IBActivityManagerService"

    invoke-virtual {p0, p0, v0}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 183
    :cond_4
    const-string v0, "top.niunaijun.blackbox.core.system.am.IBActivityManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 184
    instance-of v1, v0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    if-eqz v1, :cond_13

    .line 185
    check-cast v0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    return-object v0

    .line 187
    :cond_13
    new-instance v0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    const-string v3, "top.niunaijun.blackbox.core.system.am.IBActivityManagerService"

    const/4 v10, 0x1

    if-lt p1, v10, :cond_d

    const v4, 0xffffff

    if-gt p1, v4, :cond_d

    .line 197
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_16

    .line 200
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :cond_16
    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_3e4

    .line 686
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 674
    :pswitch_1f
    sget-object v1, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;

    .line 676
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 678
    sget-object v4, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/entity/am/PendingResultData;

    .line 679
    invoke-virtual {p0, v1, v3, v2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->dispatchPendingBroadcast(Ltop/niunaijun/blackbox/entity/am/PendingIntentData;Landroid/content/Intent;Ltop/niunaijun/blackbox/entity/am/PendingResultData;)Z

    move-result v0

    .line 680
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3e2

    .line 661
    :pswitch_43
    sget-object v1, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;

    .line 663
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5a

    move v3, v10

    .line 666
    :cond_5a
    invoke-virtual {p0, v1, v4, v3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->dispatchPendingService(Ltop/niunaijun/blackbox/entity/am/PendingIntentData;Landroid/content/Intent;Z)Z

    move-result v0

    .line 667
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3e2

    .line 650
    :pswitch_66
    sget-object v1, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;

    .line 652
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 653
    invoke-virtual {p0, v1, v2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->dispatchPendingActivity(Ltop/niunaijun/blackbox/entity/am/PendingIntentData;Landroid/content/Intent;)Z

    move-result v0

    .line 654
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3e2

    .line 639
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 642
    invoke-virtual {p0, v1, v2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getFlagsForIntentSender(Landroid/os/IBinder;I)I

    move-result v0

    .line 643
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3e2

    .line 628
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 630
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 631
    invoke-virtual {p0, v1, v2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getTypeForIntentSender(Landroid/os/IBinder;I)I

    move-result v0

    .line 632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3e2

    .line 617
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 619
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 620
    invoke-virtual {p0, v1, v2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getUidForIntentSender(Landroid/os/IBinder;I)I

    move-result v0

    .line 621
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3e2

    .line 606
    :pswitch_be
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 609
    invoke-virtual {p0, v1, v2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getPackageForIntentSender(Landroid/os/IBinder;I)Ljava/lang/String;

    move-result-object v0

    .line 610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_3e2

    .line 596
    :pswitch_d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 599
    invoke-virtual {p0, v1, v2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->cancelIntentSender(Landroid/os/IBinder;I)V

    .line 600
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3e2

    .line 580
    :pswitch_e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    .line 589
    invoke-virtual/range {v0 .. v5}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->registerIntentSender(Landroid/os/IBinder;Ljava/lang/String;III)V

    .line 590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3e2

    .line 555
    :pswitch_ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 559
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 561
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 567
    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/Intent;

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 571
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move v5, v0

    move-object v0, p0

    .line 572
    invoke-virtual/range {v0 .. v9}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->createPendingIntentData(ILjava/lang/String;Ljava/lang/String;III[Landroid/content/Intent;[Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/am/PendingIntentData;

    move-result-object v0

    .line 573
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    invoke-static {p3, v0, v10}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_3e2

    .line 544
    :pswitch_135
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 547
    invoke-virtual {p0, v1, v2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getLaunchedFromUid(Landroid/os/IBinder;I)I

    move-result v0

    .line 548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3e2

    .line 533
    :pswitch_149
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 536
    invoke-virtual {p0, v1, v2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getLaunchedFromPackage(Landroid/os/IBinder;I)Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_3e2

    .line 522
    :pswitch_15d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 525
    invoke-virtual {p0, v1, v2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getCallingActivity(Landroid/os/IBinder;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    invoke-static {p3, v0, v10}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_3e2

    .line 511
    :pswitch_171
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 514
    invoke-virtual {p0, v1, v2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getCallingPackage(Landroid/os/IBinder;I)Ljava/lang/String;

    move-result-object v0

    .line 515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_3e2

    .line 503
    :pswitch_185
    sget-object v1, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/entity/am/PendingResultData;

    .line 504
    invoke-virtual {p0, v1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->finishBroadcast(Ltop/niunaijun/blackbox/entity/am/PendingResultData;)V

    .line 505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3e2

    .line 491
    :pswitch_195
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 493
    sget-object v2, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/entity/am/PendingResultData;

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 496
    invoke-virtual {p0, v1, v2, v3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->scheduleBroadcastReceiver(Landroid/content/Intent;Ltop/niunaijun/blackbox/entity/am/PendingResultData;I)V

    .line 497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3e2

    .line 480
    :pswitch_1b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 483
    invoke-virtual {p0, v1, v2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getRunningServices(Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/am/RunningServiceInfo;

    move-result-object v0

    .line 484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    invoke-static {p3, v0, v10}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_3e2

    .line 469
    :pswitch_1c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 472
    invoke-virtual {p0, v1, v2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getRunningAppProcesses(Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/am/RunningAppProcessInfo;

    move-result-object v0

    .line 473
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    invoke-static {p3, v0, v10}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_3e2

    .line 461
    :pswitch_1d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 462
    invoke-virtual {p0, v1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->onFinishActivity(Landroid/os/IBinder;)V

    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3e2

    .line 453
    :pswitch_1e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 454
    invoke-virtual {p0, v1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->onActivityDestroyed(Landroid/os/IBinder;)V

    .line 455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3e2

    .line 445
    :pswitch_1f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 446
    invoke-virtual {p0, v1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->onActivityResumed(Landroid/os/IBinder;)V

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3e2

    .line 433
    :pswitch_1fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 438
    invoke-virtual {p0, v1, v2, v3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->onActivityCreated(ILandroid/os/IBinder;Landroid/os/IBinder;)V

    .line 439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3e2

    .line 420
    :pswitch_211
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 425
    invoke-virtual {p0, v1, v2, v3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->peekService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object v0

    .line 426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_3e2

    .line 407
    :pswitch_22d
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 412
    invoke-virtual {p0, v1, v2, v3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-static {p3, v0, v10}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_3e2

    .line 398
    :pswitch_249
    sget-object v1, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;

    .line 399
    invoke-virtual {p0, v1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;

    move-result-object v0

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_3e2

    .line 388
    :pswitch_25d
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 391
    invoke-virtual {p0, v1, v2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->onServiceDestroy(Landroid/content/Intent;I)V

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3e2

    .line 377
    :pswitch_271
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 380
    invoke-virtual {p0, v1, v2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->onServiceUnbind(Landroid/content/Intent;I)Ltop/niunaijun/blackbox/entity/UnbindRecord;

    move-result-object v0

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-static {p3, v0, v10}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_3e2

    .line 362
    :pswitch_289
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 369
    invoke-virtual {p0, v1, v2, v3, v4}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;II)Z

    move-result v0

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3e2

    .line 352
    :pswitch_2a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 355
    invoke-virtual {p0, v1, v2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->unbindService(Landroid/os/IBinder;I)V

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3e2

    .line 337
    :pswitch_2b9
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 344
    invoke-virtual {p0, v1, v2, v3, v4}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-static {p3, v0, v10}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_3e2

    .line 324
    :pswitch_2d9
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 329
    invoke-virtual {p0, v1, v2, v3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->stopService(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3e2

    .line 309
    :pswitch_2f5
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_308

    move v3, v10

    .line 315
    :cond_308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 316
    invoke-virtual {p0, v1, v2, v3, v4}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->startService(Landroid/content/Intent;Ljava/lang/String;ZI)Landroid/content/ComponentName;

    move-result-object v0

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-static {p3, v0, v10}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_3e2

    .line 292
    :pswitch_318
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 294
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/Intent;

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 300
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v6}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v0, p0

    .line 301
    invoke-virtual/range {v0 .. v5}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->startActivities(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result v0

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3e2

    .line 269
    :pswitch_341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 271
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Intent;

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 283
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v8}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/os/Bundle;

    move-object v5, v0

    move-object v0, p0

    .line 284
    invoke-virtual/range {v0 .. v8}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->startActivityAms(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v0

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3e2

    .line 259
    :pswitch_378
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 262
    invoke-virtual {p0, v1, v2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->startActivity(Landroid/content/Intent;I)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3e2

    .line 248
    :pswitch_38b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-virtual {p0, v1, v2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->consumeOAuthRedirect(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3e2

    .line 233
    :pswitch_39e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 240
    invoke-virtual {p0, v1, v2, v3, v4}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->registerOAuthRedirect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3e2

    .line 221
    :pswitch_3b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 226
    invoke-virtual {p0, v1, v2, v3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->restartProcess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3e2

    .line 208
    :pswitch_3cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 213
    invoke-virtual {p0, v1, v2, v3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->initProcess(Ljava/lang/String;Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-static {p3, v0, v10}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_3e2
    return v10

    nop

    :pswitch_data_3e4
    .packed-switch 0x1
        :pswitch_3cc
        :pswitch_3b9
        :pswitch_39e
        :pswitch_38b
        :pswitch_378
        :pswitch_341
        :pswitch_318
        :pswitch_2f5
        :pswitch_2d9
        :pswitch_2b9
        :pswitch_2a9
        :pswitch_289
        :pswitch_271
        :pswitch_25d
        :pswitch_249
        :pswitch_22d
        :pswitch_211
        :pswitch_1fd
        :pswitch_1f1
        :pswitch_1e5
        :pswitch_1d9
        :pswitch_1c5
        :pswitch_1b1
        :pswitch_195
        :pswitch_185
        :pswitch_171
        :pswitch_15d
        :pswitch_149
        :pswitch_135
        :pswitch_ff
        :pswitch_e2
        :pswitch_d2
        :pswitch_be
        :pswitch_aa
        :pswitch_96
        :pswitch_82
        :pswitch_66
        :pswitch_43
        :pswitch_1f
    .end packed-switch
.end method

###### Class top.niunaijun.blackbox.core.system.am.IBActivityManagerService.Stub.Proxy (top.niunaijun.blackbox.core.system.am.IBActivityManagerService$Stub$Proxy)
