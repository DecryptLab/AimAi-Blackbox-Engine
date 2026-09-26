.class public Ltop/niunaijun/blackbox/core/system/user/BUserInfo;
.super Ljava/lang/Object;
.source "BUserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltop/niunaijun/blackbox/core/system/user/BUserInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public createTime:J

.field public id:I

.field public name:Ljava/lang/String;

.field public status:Ltop/niunaijun/blackbox/core/system/user/BUserStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Ltop/niunaijun/blackbox/core/system/user/BUserInfo$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/user/BUserInfo$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;->id:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x0

    goto :goto_18

    .line 39
    :cond_12
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/user/BUserStatus;->values()[Ltop/niunaijun/blackbox/core/system/user/BUserStatus;

    move-result-object v1

    aget-object v0, v1, v0

    :goto_18
    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;->status:Ltop/niunaijun/blackbox/core/system/user/BUserStatus;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;->name:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;->createTime:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BUserInfo{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;->status:Ltop/niunaijun/blackbox/core/system/user/BUserStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 30
    iget p2, p0, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;->status:Ltop/niunaijun/blackbox/core/system/user/BUserStatus;

    if-nez p2, :cond_b

    const/4 p2, -0x1

    goto :goto_f

    :cond_b
    invoke-virtual {p2}, Ltop/niunaijun/blackbox/core/system/user/BUserStatus;->ordinal()I

    move-result p2

    :goto_f
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-wide v0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;->createTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

###### Class top.niunaijun.blackbox.core.system.user.BUserInfo.AnonymousClass1 (top.niunaijun.blackbox.core.system.user.BUserInfo$1)
