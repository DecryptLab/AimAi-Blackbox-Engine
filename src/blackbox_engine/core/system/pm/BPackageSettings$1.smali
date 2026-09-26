.class Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings$1;
.super Ljava/lang/Object;
.source "BPackageSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 131
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

    .line 131
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings$1;->createFromParcel(Landroid/os/Parcel;)Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;
    .registers 2

    .line 134
    new-instance p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;-><init>(Landroid/os/Parcel;)V

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

    .line 131
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings$1;->newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;
    .registers 2

    .line 139
    new-array p0, p1, [Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    return-object p0
.end method
