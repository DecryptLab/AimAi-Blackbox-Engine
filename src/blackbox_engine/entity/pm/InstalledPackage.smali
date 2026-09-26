.class public Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;
.super Ljava/lang/Object;
.source "InstalledPackage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public packageName:Ljava/lang/String;

.field public userId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Ltop/niunaijun/blackbox/entity/pm/InstalledPackage$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/entity/pm/InstalledPackage$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;->userId:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;->packageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p1, :cond_1c

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 60
    :cond_11
    check-cast p1, Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;

    .line 61
    iget-object p0, p0, Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;->packageName:Ljava/lang/String;

    iget-object p1, p1, Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return p0
.end method

.method public getApplication()Landroid/content/pm/ApplicationInfo;
    .registers 4

    .line 26
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v0

    iget-object v1, p0, Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;->packageName:Ljava/lang/String;

    const/16 v2, 0x80

    iget p0, p0, Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;->userId:I

    invoke-virtual {v0, v1, v2, p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .registers 4

    .line 30
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v0

    iget-object v1, p0, Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;->packageName:Ljava/lang/String;

    const/16 v2, 0x80

    iget p0, p0, Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;->userId:I

    invoke-virtual {v0, v1, v2, p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 66
    iget-object p0, p0, Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;->packageName:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 40
    iget p2, p0, Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;->userId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object p0, p0, Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

###### Class top.niunaijun.blackbox.entity.pm.InstalledPackage.AnonymousClass1 (top.niunaijun.blackbox.entity.pm.InstalledPackage$1)
