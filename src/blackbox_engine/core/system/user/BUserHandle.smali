.class public final Ltop/niunaijun/blackbox/core/system/user/BUserHandle;
.super Ljava/lang/Object;
.source "BUserHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AID_APP_END:I = 0x4e1f

.field public static final AID_APP_START:I = 0x2710

.field public static final AID_CACHE_GID_START:I = 0x4e20

.field public static final AID_ROOT:I = 0x0

.field public static final AID_SHARED_GID_START:I = 0xc350

.field public static final ALL:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltop/niunaijun/blackbox/core/system/user/BUserHandle;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURRENT:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

.field public static final CURRENT_OR_SELF:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

.field public static final ERR_GID:I = -0x1

.field public static final MU_ENABLED:Z = true

.field public static final OWNER:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PER_USER_RANGE:I = 0x186a0

.field public static final SYSTEM:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

.field public static final USER_ALL:I = -0x1

.field public static final USER_CURRENT:I = -0x2

.field public static final USER_CURRENT_OR_SELF:I = -0x3

.field public static final USER_NULL:I = -0x2710

.field public static final USER_OWNER:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USER_SERIAL_SYSTEM:I

.field public static final USER_SYSTEM:I


# instance fields
.field final mHandle:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;-><init>(I)V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->ALL:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    .line 53
    new-instance v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;-><init>(I)V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->CURRENT:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    .line 69
    new-instance v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;-><init>(I)V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->CURRENT_OR_SELF:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    .line 90
    new-instance v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;-><init>(I)V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->OWNER:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    .line 105
    new-instance v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;-><init>(I)V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->SYSTEM:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    .line 444
    new-instance v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput p1, p0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->mHandle:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->mHandle:I

    return-void
.end method

.method public static getAppId(I)I
    .registers 2

    const v0, 0x186a0

    .line 255
    rem-int/2addr p0, v0

    return p0
.end method

.method public static getCacheAppGid(I)I
    .registers 2

    .line 304
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getAppId(I)I

    move-result p0

    invoke-static {v0, p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getCacheAppGid(II)I

    move-result p0

    return p0
.end method

.method public static getCacheAppGid(II)I
    .registers 3

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_f

    const/16 v0, 0x4e1f

    if-gt p1, v0, :cond_f

    add-int/lit16 p1, p1, 0x2710

    .line 312
    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUid(II)I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method public static getCallingAppId()I
    .registers 1

    .line 226
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getAppId(I)I

    move-result v0

    return v0
.end method

.method public static getCallingUserId()I
    .registers 1

    .line 219
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static getSharedAppGid(I)I
    .registers 2

    .line 271
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getAppId(I)I

    move-result p0

    invoke-static {v0, p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getSharedAppGid(II)I

    move-result p0

    return p0
.end method

.method public static getSharedAppGid(II)I
    .registers 3

    const/16 p0, 0x2710

    if-lt p1, p0, :cond_d

    const/16 v0, 0x4e1f

    if-gt p1, v0, :cond_d

    const p0, -0x9c40

    sub-int/2addr p1, p0

    return p1

    :cond_d
    if-ltz p1, :cond_12

    if-gt p1, p0, :cond_12

    return p1

    :cond_12
    const/4 p0, -0x1

    return p0
.end method

.method public static getUid(II)I
    .registers 3

    const v0, 0x186a0

    mul-int/2addr p0, v0

    .line 243
    rem-int/2addr p1, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static getUserGid(I)I
    .registers 2

    const/16 v0, 0x270d

    .line 264
    invoke-static {p0, v0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUid(II)I

    move-result p0

    return p0
.end method

.method public static getUserHandleForUid(I)Ltop/niunaijun/blackbox/core/system/user/BUserHandle;
    .registers 1

    .line 199
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->of(I)Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    move-result-object p0

    return-object p0
.end method

.method public static getUserId(I)I
    .registers 2

    const v0, 0x186a0

    .line 209
    div-int/2addr p0, v0

    return p0
.end method

.method public static isApp(I)Z
    .registers 3

    const/4 v0, 0x0

    if-lez p0, :cond_11

    .line 171
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getAppId(I)I

    move-result p0

    const/16 v1, 0x2710

    if-lt p0, v1, :cond_11

    const/16 v1, 0x4e1f

    if-gt p0, v1, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    return v0
.end method

.method public static isCore(I)Z
    .registers 3

    const/4 v0, 0x0

    if-ltz p0, :cond_d

    .line 185
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getAppId(I)I

    move-result p0

    const/16 v1, 0x2710

    if-ge p0, v1, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    return v0
.end method

.method public static isSameApp(II)Z
    .registers 2

    .line 160
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getAppId(I)I

    move-result p0

    invoke-static {p1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getAppId(I)I

    move-result p1

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static isSameUser(II)Z
    .registers 2

    .line 147
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUserId(I)I

    move-result p1

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static myUserId()I
    .registers 1

    .line 344
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static of(I)Ltop/niunaijun/blackbox/core/system/user/BUserHandle;
    .registers 2

    if-nez p0, :cond_5

    .line 233
    sget-object p0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->SYSTEM:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    return-object p0

    :cond_5
    new-instance v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    invoke-direct {v0, p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;-><init>(I)V

    return-object v0
.end method

.method public static parseUserArg(Ljava/lang/String;)I
    .registers 4

    .line 323
    const-string v0, "all"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 325
    :cond_a
    const-string v0, "current"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "cur"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_35

    .line 329
    :cond_1b
    :try_start_1b
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1f} :catch_20

    return p0

    .line 331
    :catch_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad user number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    :goto_35
    const/4 p0, -0x2

    return p0
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Ltop/niunaijun/blackbox/core/system/user/BUserHandle;
    .registers 2

    .line 440
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_e

    .line 441
    new-instance v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    invoke-direct {v0, p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;-><init>(I)V

    return-object v0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static writeToParcel(Ltop/niunaijun/blackbox/core/system/user/BUserHandle;Landroid/os/Parcel;)V
    .registers 3

    if-eqz p0, :cond_7

    const/4 v0, 0x0

    .line 423
    invoke-virtual {p0, p1, v0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_7
    const/16 p0, -0x2710

    .line 425
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 392
    :try_start_3
    check-cast p1, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    .line 393
    iget p0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->mHandle:I

    iget p1, p1, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->mHandle:I
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_9} :catch_d

    if-ne p0, p1, :cond_d

    const/4 p0, 0x1

    return p0

    :catch_d
    :cond_d
    return v0
.end method

.method public getIdentifier()I
    .registers 1

    .line 380
    iget p0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->mHandle:I

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 402
    iget p0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->mHandle:I

    return p0
.end method

.method public isOwner()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 356
    sget-object v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->OWNER:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSystem()Z
    .registers 2

    .line 364
    sget-object v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->SYSTEM:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserHandle{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->mHandle:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 410
    iget p0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->mHandle:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

###### Class top.niunaijun.blackbox.core.system.user.BUserHandle.AnonymousClass1 (top.niunaijun.blackbox.core.system.user.BUserHandle$1)
