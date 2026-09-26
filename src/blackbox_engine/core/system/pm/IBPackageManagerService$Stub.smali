.class public abstract Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;
.super Landroid/os/Binder;
.source "IBPackageManagerService.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_clearPackage:I = 0x16

.field static final TRANSACTION_deleteUser:I = 0x18

.field static final TRANSACTION_getActivityInfo:I = 0x9

.field static final TRANSACTION_getApplicationInfo:I = 0x5

.field static final TRANSACTION_getInstalledApplications:I = 0xb

.field static final TRANSACTION_getInstalledPackages:I = 0xc

.field static final TRANSACTION_getInstalledPackagesAsUser:I = 0x1b

.field static final TRANSACTION_getPackageInfo:I = 0x6

.field static final TRANSACTION_getPackagesForUid:I = 0x1c

.field static final TRANSACTION_getProviderInfo:I = 0xa

.field static final TRANSACTION_getReceiverInfo:I = 0x8

.field static final TRANSACTION_getServiceInfo:I = 0x7

.field static final TRANSACTION_installExistingPackageAsUser:I = 0x12

.field static final TRANSACTION_installPackageAsUser:I = 0x11

.field static final TRANSACTION_isInstalled:I = 0x19

.field static final TRANSACTION_isMicrogRuntimeReady:I = 0x1a

.field static final TRANSACTION_prepareMicrogRuntimeMigration:I = 0x13

.field static final TRANSACTION_queryBroadcastReceivers:I = 0xe

.field static final TRANSACTION_queryContentProviders:I = 0x10

.field static final TRANSACTION_queryIntentActivities:I = 0xd

.field static final TRANSACTION_queryIntentServices:I = 0xf

.field static final TRANSACTION_resolveActivity:I = 0x2

.field static final TRANSACTION_resolveContentProvider:I = 0x3

.field static final TRANSACTION_resolveIntent:I = 0x4

.field static final TRANSACTION_resolveService:I = 0x1

.field static final TRANSACTION_stopPackage:I = 0x17

.field static final TRANSACTION_uninstallPackage:I = 0x15

.field static final TRANSACTION_uninstallPackageAsUser:I = 0x14


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 133
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 134
    const-string v0, "top.niunaijun.blackbox.core.system.pm.IBPackageManagerService"

    invoke-virtual {p0, p0, v0}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 145
    :cond_4
    const-string v0, "top.niunaijun.blackbox.core.system.pm.IBPackageManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 146
    instance-of v1, v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    if-eqz v1, :cond_13

    .line 147
    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    return-object v0

    .line 149
    :cond_13
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 158
    const-string v0, "top.niunaijun.blackbox.core.system.pm.IBPackageManagerService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 159
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 162
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_16
    packed-switch p1, :pswitch_data_29e

    .line 502
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 492
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 495
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->getPackagesForUid(II)[Ljava/lang/String;

    move-result-object p0

    .line 496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_29c

    .line 483
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 484
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->getInstalledPackagesAsUser(I)Ljava/util/List;

    move-result-object p0

    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto/16 :goto_29c

    .line 474
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 475
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->isMicrogRuntimeReady(I)Z

    move-result p0

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_29c

    .line 463
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 466
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->isInstalled(Ljava/lang/String;I)Z

    move-result p0

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_29c

    .line 455
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 456
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->deleteUser(I)V

    .line 457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_29c

    .line 445
    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 448
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->stopPackage(Ljava/lang/String;I)V

    .line 449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_29c

    .line 435
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 438
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->clearPackage(Ljava/lang/String;I)V

    .line 439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_29c

    .line 427
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 428
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->uninstallPackage(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_29c

    .line 417
    :pswitch_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 420
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->uninstallPackageAsUser(Ljava/lang/String;I)V

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_29c

    .line 409
    :pswitch_ae
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->prepareMicrogRuntimeMigration()Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p0

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_29c

    .line 399
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 402
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->installExistingPackageAsUser(Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p0

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_29c

    .line 386
    :pswitch_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 388
    sget-object p4, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 391
    invoke-virtual {p0, p1, p4, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->installPackageAsUser(Ljava/lang/String;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p0

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_29c

    .line 371
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 378
    invoke-virtual {p0, p1, p4, v0, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->queryContentProviders(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p0

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto/16 :goto_29c

    .line 358
    :pswitch_106
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 363
    invoke-virtual {p0, p1, p4, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->queryIntentServices(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto/16 :goto_29c

    .line 343
    :pswitch_122
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 350
    invoke-virtual {p0, p1, p4, v0, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto/16 :goto_29c

    .line 328
    :pswitch_142
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 335
    invoke-virtual {p0, p1, p4, v0, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto/16 :goto_29c

    .line 317
    :pswitch_162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 320
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->getInstalledPackages(II)Ljava/util/List;

    move-result-object p0

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto/16 :goto_29c

    .line 306
    :pswitch_176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 309
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->getInstalledApplications(II)Ljava/util/List;

    move-result-object p0

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto/16 :goto_29c

    .line 293
    :pswitch_18a
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 298
    invoke-virtual {p0, p1, p4, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_29c

    .line 280
    :pswitch_1a6
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 285
    invoke-virtual {p0, p1, p4, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_29c

    .line 267
    :pswitch_1c2
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 272
    invoke-virtual {p0, p1, p4, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_29c

    .line 254
    :pswitch_1de
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 259
    invoke-virtual {p0, p1, p4, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_29c

    .line 241
    :pswitch_1fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 246
    invoke-virtual {p0, p1, p4, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_29c

    .line 228
    :pswitch_212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 233
    invoke-virtual {p0, p1, p4, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_29c

    .line 213
    :pswitch_229
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 220
    invoke-virtual {p0, p1, p4, v0, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_29c

    .line 200
    :pswitch_248
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 205
    invoke-virtual {p0, p1, p4, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_29c

    .line 185
    :pswitch_25f
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 192
    invoke-virtual {p0, p1, p4, v0, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_29c

    .line 170
    :pswitch_27e
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 177
    invoke-virtual {p0, p1, p4, v0, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-static {p3, p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_29c
    return v1

    nop

    :pswitch_data_29e
    .packed-switch 0x1
        :pswitch_27e
        :pswitch_25f
        :pswitch_248
        :pswitch_229
        :pswitch_212
        :pswitch_1fa
        :pswitch_1de
        :pswitch_1c2
        :pswitch_1a6
        :pswitch_18a
        :pswitch_176
        :pswitch_162
        :pswitch_142
        :pswitch_122
        :pswitch_106
        :pswitch_ea
        :pswitch_ce
        :pswitch_ba
        :pswitch_ae
        :pswitch_9e
        :pswitch_92
        :pswitch_82
        :pswitch_72
        :pswitch_66
        :pswitch_52
        :pswitch_42
        :pswitch_32
        :pswitch_1e
    .end packed-switch
.end method

###### Class top.niunaijun.blackbox.core.system.pm.IBPackageManagerService.Stub.Proxy (top.niunaijun.blackbox.core.system.pm.IBPackageManagerService$Stub$Proxy)
