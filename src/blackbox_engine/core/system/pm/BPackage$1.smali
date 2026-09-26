.class Ltop/niunaijun/blackbox/core/system/pm/BPackage$1;
.super Ljava/lang/Object;
.source "BPackage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/pm/BPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Ltop/niunaijun/blackbox/core/system/pm/BPackage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 730
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$1;->createFromParcel(Landroid/os/Parcel;)Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltop/niunaijun/blackbox/core/system/pm/BPackage;
    .registers 2

    .line 733
    new-instance p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 730
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$1;->newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackage;
    .registers 2

    .line 738
    new-array p0, p1, [Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    return-object p0
.end method

###### Class top.niunaijun.blackbox.core.system.pm.BPackage.Activity (top.niunaijun.blackbox.core.system.pm.BPackage$Activity)
