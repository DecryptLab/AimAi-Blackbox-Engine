.class public final Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;
.super Ljava/lang/Object;
.source "CrashDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;
    }
.end annotation


# static fields
.field private static final COPY_BUFFER_BYTES:I = 0x4000

.field private static final DIRECTORY_NAME:Ljava/lang/String; = "diagnostics"

.field public static final JAVA_CRASH_ARCHIVE_FILE:Ljava/lang/String; = "java-crashes.previous.log"

.field public static final JAVA_CRASH_FILE:Ljava/lang/String; = "java-crashes.log"

.field private static final JAVA_FALLBACK_PREFIX:Ljava/lang/String; = "java-crashes-"

.field private static final JAVA_FALLBACK_SUFFIX:Ljava/lang/String; = ".fallback.log"

.field private static final JAVA_FILE_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final JAVA_LOCK_FILE:Ljava/lang/String; = ".java-crashes.lock"

.field public static final MAX_JAVA_CRASH_FILE_BYTES:J = 0x200000L

.field public static final MAX_JAVA_CRASH_RECORD_BYTES:I = 0x40000

.field private static final MAX_JAVA_FALLBACK_BYTES:J = 0x80000L

.field public static final NATIVE_CRASH_FILE:Ljava/lang/String; = "native-crashes.bin"

.field private static final RECORD_BODY_LIMIT:I

.field private static final RECORD_SUFFIX:[B

.field private static final TAG:Ljava/lang/String; = "CrashDiagnostics"

.field private static final TRUNCATED_SUFFIX:[B

.field private static final UNKNOWN_VALUE:Ljava/lang/String; = "unknown"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 40
    const-string v0, "\n[stack trace truncated at 256 KiB]\n"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->TRUNCATED_SUFFIX:[B

    .line 42
    const-string v1, "=== End Java crash ===\n"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->RECORD_SUFFIX:[B

    const/high16 v2, 0x40000

    .line 44
    array-length v0, v0

    sub-int/2addr v2, v0

    array-length v0, v1

    sub-int/2addr v2, v0

    sput v2, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->RECORD_BODY_LIMIT:I

    .line 47
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->JAVA_FILE_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendAndSync(Ljava/io/File;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 302
    :try_start_6
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 303
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 304
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_17

    .line 305
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_17
    move-exception p0

    .line 301
    :try_start_18
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_20
    throw p0
.end method

.method private static appendFallbackRecord(Ljava/io/File;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "java-crashes-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".fallback.log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    invoke-static {v0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->validateRegularFile(Ljava/io/File;)V

    .line 226
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    array-length p0, p1

    int-to-long v3, p0

    add-long/2addr v1, v3

    const-wide/32 v3, 0x80000

    cmp-long p0, v1, v3

    if-lez p0, :cond_40

    .line 227
    invoke-static {v0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->truncateAndSync(Ljava/io/File;)V

    .line 229
    :cond_40
    invoke-static {v0, p1}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->appendAndSync(Ljava/io/File;[B)V

    return-void
.end method

.method private static appendJavaRecord(Landroid/content/Context;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-static {p0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->directory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 195
    new-instance v0, Ljava/io/File;

    const-string v1, ".java-crashes.lock"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 197
    :try_start_11
    invoke-static {v1}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->tryLock(Ljava/io/FileOutputStream;)Ljava/nio/channels/FileLock;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 199
    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->appendFallbackRecord(Ljava/io/File;[B)V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_48

    .line 208
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    .line 203
    :cond_1e
    :try_start_1e
    new-instance v2, Ljava/io/File;

    const-string v3, "java-crashes.log"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    new-instance v3, Ljava/io/File;

    const-string v4, "java-crashes.previous.log"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 205
    array-length p0, p1

    invoke-static {v2, v3, p0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->rotateIfRequired(Ljava/io/File;Ljava/io/File;I)V

    .line 206
    invoke-static {v2, p1}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->appendAndSync(Ljava/io/File;[B)V
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_3c

    if-eqz v0, :cond_38

    .line 207
    :try_start_35
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_48

    .line 208
    :cond_38
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_3c
    move-exception p0

    if-eqz v0, :cond_47

    .line 202
    :try_start_3f
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception p1

    :try_start_44
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_47
    :goto_47
    throw p0
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception p0

    .line 196
    :try_start_49
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_51

    :catchall_4d
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_51
    throw p0
.end method

.method private static buildJavaCrashRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/Throwable;)[B
    .registers 11

    .line 150
    new-instance v0, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;

    sget v1, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->RECORD_BODY_LIMIT:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;-><init>(ILtop/niunaijun/blackbox/diagnostics/CrashDiagnostics-IA;)V

    .line 151
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-nez p2, :cond_1f

    .line 154
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    .line 156
    :cond_1f
    const-string v2, "=== AimAi Java crash ==="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    const-string v2, "record_version=1"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "captured_at_utc="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->formatUtc(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "captured_at_epoch_ms="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "elapsed_realtime_ms="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "package="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->cleanMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "process="

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->cleanMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "pid="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "uid="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "thread="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->threadName(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->cleanMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "thread_id="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->threadId(Ljava/lang/Thread;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "thread_state="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->threadState(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "exception="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->exceptionName(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    const-string p0, "--- Stack trace ---"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez p3, :cond_128

    .line 172
    :try_start_122
    const-string p0, "<no throwable supplied>"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_149

    .line 174
    :cond_128
    invoke-virtual {p3, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_12b
    .catchall {:try_start_122 .. :try_end_12b} :catchall_12c

    goto :goto_149

    :catchall_12c
    move-exception p0

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "<stack trace unavailable: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->exceptionName(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ">"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    :goto_149
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 181
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    .line 183
    invoke-static {v0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;->-$$Nest$msize(Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;)I

    move-result p1

    sget-object p2, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->TRUNCATED_SUFFIX:[B

    array-length p3, p2

    add-int/2addr p1, p3

    sget-object p3, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->RECORD_SUFFIX:[B

    array-length v1, p3

    add-int/2addr p1, v1

    const/high16 v1, 0x40000

    .line 182
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 184
    invoke-static {v0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;->-$$Nest$mtoByteArray(Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;)[B

    move-result-object p1

    .line 185
    array-length v1, p1

    invoke-virtual {p0, p1, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 186
    invoke-static {v0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;->-$$Nest$misTruncated(Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$BoundedOutputStream;)Z

    move-result p1

    if-eqz p1, :cond_175

    .line 187
    array-length p1, p2

    invoke-virtual {p0, p2, v3, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 189
    :cond_175
    array-length p1, p3

    invoke-virtual {p0, p3, v3, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 190
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static cleanMetadata(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_18

    .line 329
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_18

    :cond_9
    const/16 v0, 0xd

    const/16 v1, 0x20

    .line 332
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 330
    :cond_18
    :goto_18
    const-string p0, "unknown"

    return-object p0
.end method

.method public static clearJavaCrashes(Landroid/content/Context;)Z
    .registers 6

    .line 122
    sget-object v0, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->JAVA_FILE_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 126
    :cond_a
    :try_start_a
    invoke-static {p0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->directory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 127
    new-instance v1, Ljava/io/File;

    const-string v3, ".java-crashes.lock"

    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1b} :catch_50
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_1b} :catch_4e
    .catchall {:try_start_a .. :try_end_1b} :catchall_5c

    .line 129
    :try_start_1b
    invoke-static {v3}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->tryLock(Ljava/io/FileOutputStream;)Ljava/nio/channels/FileLock;

    move-result-object v1
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_44

    if-nez v1, :cond_28

    .line 136
    :try_start_21
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_50
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_24} :catch_4e
    .catchall {:try_start_21 .. :try_end_24} :catchall_5c

    .line 141
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .line 134
    :cond_28
    :try_start_28
    invoke-static {p0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->deleteJavaCrashFiles(Ljava/io/File;)Z

    move-result p0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_38

    if-eqz v1, :cond_31

    .line 135
    :try_start_2e
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_44

    .line 136
    :cond_31
    :try_start_31
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_50
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_34} :catch_4e
    .catchall {:try_start_31 .. :try_end_34} :catchall_5c

    .line 141
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p0

    :catchall_38
    move-exception p0

    if-eqz v1, :cond_43

    .line 133
    :try_start_3b
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception v0

    :try_start_40
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_43
    :goto_43
    throw p0
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception p0

    .line 128
    :try_start_45
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception v0

    :try_start_4a
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4d
    throw p0
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4e} :catch_50
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_4e} :catch_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_5c

    :catch_4e
    move-exception p0

    goto :goto_51

    :catch_50
    move-exception p0

    .line 138
    :goto_51
    :try_start_51
    const-string v0, "Unable to clear Java crash diagnostics"

    invoke-static {v0, p0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->reportFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_5c

    .line 141
    sget-object p0, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->JAVA_FILE_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_5c
    move-exception p0

    sget-object v0, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->JAVA_FILE_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 142
    throw p0
.end method

.method private static copyTailAndSync(Ljava/io/File;Ljava/io/File;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 283
    :try_start_7
    new-instance p0, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_56

    .line 284
    :try_start_d
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 285
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 p3, 0x4000

    .line 286
    new-array p3, p3, [B

    :goto_21
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_3b

    const-wide/16 v2, 0x4000

    .line 288
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, p3, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    if-gez v2, :cond_35

    goto :goto_3b

    .line 292
    :cond_35
    invoke-virtual {p0, p3, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v2, v2

    sub-long/2addr p1, v2

    goto :goto_21

    .line 295
    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 296
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_45
    .catchall {:try_start_d .. :try_end_45} :catchall_4c

    .line 297
    :try_start_45
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_56

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_4c
    move-exception p1

    .line 282
    :try_start_4d
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception p0

    :try_start_52
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_55
    throw p1
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_56

    :catchall_56
    move-exception p0

    :try_start_57
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_5f

    :catchall_5b
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5f
    throw p0
.end method

.method private static deleteJavaCrashFiles(Ljava/io/File;)Z
    .registers 7

    .line 233
    new-instance v0, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1c

    .line 236
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1b

    :cond_1a
    return v1

    :cond_1b
    :goto_1b
    return v2

    .line 239
    :cond_1c
    array-length p0, v0

    move v3, v1

    :goto_1e
    if-ge v3, p0, :cond_32

    aget-object v4, v0, v3

    .line 240
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_2f

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2f

    move v2, v1

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_32
    return v2
.end method

.method public static directory(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    if-eqz p0, :cond_33

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 60
    new-instance v0, Ljava/io/File;

    const-string v1, "diagnostics"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_2a

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_2a

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_22

    goto :goto_2a

    .line 64
    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Diagnostics directory could not be created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    :goto_2a
    return-object v0

    .line 58
    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Private files directory is unavailable"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context is required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static exceptionName(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 2

    .line 361
    const-string v0, "unknown"

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    return-object p0

    :catchall_e
    return-object v0
.end method

.method private static formatUtc(J)Ljava/lang/String;
    .registers 5

    .line 322
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 324
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 325
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDiagnosticsDirectory(Landroid/content/Context;)Ljava/io/File;
    .registers 1

    .line 70
    invoke-static {p0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->directory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getJavaCrashArchiveFile(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    .line 78
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->directory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "java-crashes.previous.log"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getJavaCrashFile(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    .line 74
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->directory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "java-crashes.log"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getNativeCrashFile(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    .line 82
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->directory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "native-crashes.bin"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isInternalFile(Ljava/lang/String;)Z
    .registers 2

    .line 86
    const-string v0, ".java-crashes.lock"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isJavaCrashArtifact(Ljava/lang/String;)Z
    .registers 2

    .line 90
    const-string v0, "java-crashes.log"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "java-crashes.previous.log"

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    if-eqz p0, :cond_23

    const-string v0, "java-crashes-"

    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, ".fallback.log"

    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    return p0

    :cond_25
    :goto_25
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$deleteJavaCrashFiles$0(Ljava/io/File;)Z
    .registers 2

    .line 234
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->isJavaCrashArtifact(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static persistJavaCrash(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .registers 5

    .line 104
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->buildJavaCrashRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/Throwable;)[B

    move-result-object p1

    .line 105
    sget-object p2, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->JAVA_FILE_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_15

    .line 106
    invoke-static {p0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->directory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->appendFallbackRecord(Ljava/io/File;[B)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_23

    return p4

    .line 110
    :cond_15
    :try_start_15
    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->appendJavaRecord(Landroid/content/Context;[B)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1c

    .line 112
    :try_start_18
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p4

    :catchall_1c
    move-exception p0

    sget-object p1, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->JAVA_FILE_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 113
    throw p0
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 116
    const-string p1, "Unable to persist Java crash"

    invoke-static {p1, p0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->reportFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static reportFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 369
    :try_start_0
    const-string v0, "CrashDiagnostics"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    return-void
.end method

.method private static rotateCurrent(Ljava/io/File;Ljava/io/File;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1b

    .line 268
    :cond_13
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Previous Java crash archive could not be removed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 270
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_2f

    :cond_22
    const-wide/32 v0, 0x200000

    cmp-long p2, p2, v0

    if-gtz p2, :cond_30

    .line 273
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_30

    :goto_2f
    return-void

    .line 276
    :cond_30
    invoke-static {p0, p1, v0, v1}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->copyTailAndSync(Ljava/io/File;Ljava/io/File;J)V

    .line 277
    invoke-static {p0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->truncateAndSync(Ljava/io/File;)V

    return-void
.end method

.method private static rotateIfRequired(Ljava/io/File;Ljava/io/File;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-static {p0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->validateRegularFile(Ljava/io/File;)V

    .line 250
    invoke-static {p1}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->validateRegularFile(Ljava/io/File;)V

    .line 251
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_13

    :cond_11
    const-wide/16 v0, 0x0

    :goto_13
    const-wide/32 v2, 0x200000

    cmp-long v4, v0, v2

    if-gtz v4, :cond_21

    int-to-long v4, p2

    add-long/2addr v4, v0

    cmp-long p2, v4, v2

    if-gtz p2, :cond_21

    return-void

    .line 258
    :cond_21
    :try_start_21
    invoke-static {p0, p1, v0, v1}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->rotateCurrent(Ljava/io/File;Ljava/io/File;J)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p1

    .line 260
    const-string p2, "Unable to archive Java crash log; replacing active log"

    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->reportFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    invoke-static {p0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->truncateAndSync(Ljava/io/File;)V

    return-void
.end method

.method private static threadId(Ljava/lang/Thread;)J
    .registers 3

    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    return-wide v0

    .line 345
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_9

    :catchall_9
    return-wide v0
.end method

.method private static threadName(Ljava/lang/Thread;)Ljava/lang/String;
    .registers 2

    .line 337
    const-string v0, "unknown"

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_a

    return-object p0

    :catchall_a
    return-object v0
.end method

.method private static threadState(Ljava/lang/Thread;)Ljava/lang/String;
    .registers 2

    .line 353
    const-string v0, "unknown"

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    return-object p0

    :catchall_e
    return-object v0
.end method

.method private static truncateAndSync(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 310
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 311
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_14

    .line 312
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_14
    move-exception p0

    .line 309
    :try_start_15
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1d
    throw p0
.end method

.method private static tryLock(Ljava/io/FileOutputStream;)Ljava/nio/channels/FileLock;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object p0
    :try_end_8
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private static validateRegularFile(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_26

    .line 317
    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Crash diagnostic path is not a regular file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    :goto_26
    return-void
.end method

###### Class top.niunaijun.blackbox.diagnostics.CrashDiagnostics.BoundedOutputStream (top.niunaijun.blackbox.diagnostics.CrashDiagnostics$BoundedOutputStream)
