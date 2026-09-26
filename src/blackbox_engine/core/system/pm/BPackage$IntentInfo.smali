.class public Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;
.super Ljava/lang/Object;
.source "BPackage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/pm/BPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public banner:I

.field public hasDefault:Z

.field public icon:I

.field public intentFilter:Landroid/content/IntentFilter;

.field public labelRes:I

.field public logo:I

.field public nonLocalizedLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 533
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$IntentInfo;)V
    .registers 3

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    .line 489
    iget-boolean v0, p1, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    iput-boolean v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->hasDefault:Z

    .line 490
    iget v0, p1, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->labelRes:I

    .line 491
    iget-object v0, p1, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_13

    const/4 v0, 0x0

    goto :goto_19

    :cond_13
    iget-object v0, p1, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->nonLocalizedLabel:Ljava/lang/String;

    .line 492
    iget v0, p1, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->icon:I

    .line 493
    iget v0, p1, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->logo:I

    .line 494
    iget p1, p1, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    iput p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->banner:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    const-class v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    iput-boolean v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->hasDefault:Z

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->labelRes:I

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->nonLocalizedLabel:Ljava/lang/String;

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->icon:I

    .line 529
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->logo:I

    .line 530
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->banner:I

    return-void
.end method

.method public constructor <init>(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V
    .registers 3

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    .line 499
    iget-boolean v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->hasDefault:Z

    iput-boolean v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->hasDefault:Z

    .line 500
    iget v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->labelRes:I

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->labelRes:I

    .line 501
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->nonLocalizedLabel:Ljava/lang/String;

    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->nonLocalizedLabel:Ljava/lang/String;

    .line 502
    iget v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->icon:I

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->icon:I

    .line 503
    iget v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->logo:I

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->logo:I

    .line 504
    iget p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->banner:I

    iput p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->banner:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 514
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 515
    iget-boolean p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->hasDefault:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 516
    iget p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->labelRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->nonLocalizedLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 518
    iget p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->icon:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    iget p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->logo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    iget p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->banner:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

###### Class top.niunaijun.blackbox.core.system.pm.BPackage.IntentInfo.AnonymousClass1 (top.niunaijun.blackbox.core.system.pm.BPackage$IntentInfo$1)
