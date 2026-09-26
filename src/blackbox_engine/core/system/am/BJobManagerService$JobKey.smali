.class final Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;
.super Ljava/lang/Object;
.source "BJobManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JobKey"
.end annotation


# instance fields
.field private final jobId:I

.field private final processName:Ljava/lang/String;

.field private final userId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetjobId(Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;)I
    .registers 1

    iget p0, p0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;->jobId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetuserId(Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;)I
    .registers 1

    iget p0, p0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;->userId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mbelongsTo(Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;Ljava/lang/String;I)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;->belongsTo(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;->processName:Ljava/lang/String;

    .line 200
    iput p2, p0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;->jobId:I

    .line 201
    iput p3, p0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;->userId:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILtop/niunaijun/blackbox/core/system/am/BJobManagerService-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private belongsTo(Ljava/lang/String;I)Z
    .registers 4

    .line 205
    iget v0, p0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;->userId:I

    if-ne v0, p2, :cond_e

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;->processName:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 213
    :cond_4
    instance-of v1, p1, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 216
    :cond_a
    check-cast p1, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;

    .line 217
    iget v1, p0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;->jobId:I

    iget v3, p1, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;->jobId:I

    if-ne v1, v3, :cond_23

    iget v1, p0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;->userId:I

    iget v3, p1, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;->userId:I

    if-ne v1, v3, :cond_23

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;->processName:Ljava/lang/String;

    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;->processName:Ljava/lang/String;

    .line 219
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    return v0

    :cond_23
    return v2
.end method

.method public hashCode()I
    .registers 3

    .line 224
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;->processName:Ljava/lang/String;

    iget v1, p0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;->jobId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;->userId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
