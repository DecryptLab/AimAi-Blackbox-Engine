.class final Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;
.super Ljava/io/OutputStream;
.source "CrashDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BoundedOutputStream"
.end annotation


# instance fields
.field private final limit:I

.field private final output:Ljava/io/ByteArrayOutputStream;

.field private truncated:Z


# direct methods
.method static bridge synthetic -$$Nest$misTruncated(Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;)Z
    .registers 1

    invoke-direct {p0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;->isTruncated()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msize(Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;)I
    .registers 1

    invoke-direct {p0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;->size()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtoByteArray(Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;)[B
    .registers 1

    invoke-direct {p0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(I)V
    .registers 4

    .line 379
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 380
    iput p1, p0, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;->limit:I

    .line 381
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x4000

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;->output:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method synthetic constructor <init>(ILtop/niunaijun/blackbox/diagnostics/CrashDiagnostics-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;-><init>(I)V

    return-void
.end method

.method private isTruncated()Z
    .registers 1

    .line 410
    iget-boolean p0, p0, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;->truncated:Z

    return p0
.end method

.method private size()I
    .registers 1

    .line 406
    iget-object p0, p0, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    return p0
.end method

.method private toByteArray()[B
    .registers 1

    .line 414
    iget-object p0, p0, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public write(I)V
    .registers 4

    .line 386
    iget-object v0, p0, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;->limit:I

    if-ge v0, v1, :cond_10

    .line 387
    iget-object p0, p0, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    :cond_10
    const/4 p1, 0x1

    .line 389
    iput-boolean p1, p0, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;->truncated:Z

    return-void
.end method

.method public write([BII)V
    .registers 6

    .line 395
    iget v0, p0, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;->limit:I

    iget-object v1, p0, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 396
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_19

    .line 398
    iget-object v1, p0, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_19
    if-ge v0, p3, :cond_1e

    const/4 p1, 0x1

    .line 401
    iput-boolean p1, p0, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;->truncated:Z

    :cond_1e
    return-void
.end method

###### Class top.niunaijun.blackbox.diagnostics.CrashDiagnostics$$ExternalSyntheticLambda0 (top.niunaijun.blackbox.diagnostics.CrashDiagnostics$$ExternalSyntheticLambda0)
