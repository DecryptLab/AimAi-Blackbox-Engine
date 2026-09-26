.class public Ltop/niunaijun/blackbox/entity/pm/InstallResult;
.super Ljava/lang/Object;
.source "InstallResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltop/niunaijun/blackbox/entity/pm/InstallResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "InstallResult"


# instance fields
.field public msg:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public success:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Ltop/niunaijun/blackbox/entity/pm/InstallResult$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/entity/pm/InstallResult$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->success:Z

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->packageName:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public installError(Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;
    .registers 3

    .line 53
    iput-object p1, p0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->msg:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->success:Z

    .line 55
    const-string v0, "InstallResult"

    invoke-static {v0, p1}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public installError(Ljava/lang/String;Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;
    .registers 4

    .line 45
    iput-object p2, p0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->msg:Ljava/lang/String;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->success:Z

    .line 47
    iput-object p1, p0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->packageName:Ljava/lang/String;

    .line 48
    const-string p1, "InstallResult"

    invoke-static {p1, p2}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public installSuccess(Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;
    .registers 2

    .line 60
    iput-object p1, p0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->packageName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->msg:Ljava/lang/String;

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->success:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 30
    iget-boolean p2, p0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->success:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 31
    iget-object p2, p0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object p0, p0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->msg:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

###### Class top.niunaijun.blackbox.entity.pm.InstallResult.AnonymousClass1 (top.niunaijun.blackbox.entity.pm.InstallResult$1)
