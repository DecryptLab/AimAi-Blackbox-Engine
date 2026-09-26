.class public Ltop/niunaijun/blackbox/utils/compat/StrictModeCompat;
.super Ljava/lang/Object;
.source "StrictModeCompat.java"


# static fields
.field public static DETECT_VM_FILE_URI_EXPOSURE:I

.field public static PENALTY_DEATH_ON_FILE_URI_EXPOSURE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6
    invoke-static {}, Lblack/android/os/BRStrictMode;->get()Lblack/android/os/StrictModeStatic;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/os/StrictModeStatic;->DETECT_VM_FILE_URI_EXPOSURE()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_d

    const/16 v0, 0x2000

    goto :goto_19

    .line 7
    :cond_d
    invoke-static {}, Lblack/android/os/BRStrictMode;->get()Lblack/android/os/StrictModeStatic;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/os/StrictModeStatic;->DETECT_VM_FILE_URI_EXPOSURE()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_19
    sput v0, Ltop/niunaijun/blackbox/utils/compat/StrictModeCompat;->DETECT_VM_FILE_URI_EXPOSURE:I

    .line 9
    invoke-static {}, Lblack/android/os/BRStrictMode;->get()Lblack/android/os/StrictModeStatic;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/os/StrictModeStatic;->PENALTY_DEATH_ON_FILE_URI_EXPOSURE()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_28

    const/high16 v0, 0x4000000

    goto :goto_34

    .line 10
    :cond_28
    invoke-static {}, Lblack/android/os/BRStrictMode;->get()Lblack/android/os/StrictModeStatic;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/os/StrictModeStatic;->PENALTY_DEATH_ON_FILE_URI_EXPOSURE()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_34
    sput v0, Ltop/niunaijun/blackbox/utils/compat/StrictModeCompat;->PENALTY_DEATH_ON_FILE_URI_EXPOSURE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableDeathOnFileUriExposure()Z
    .registers 4

    const/4 v0, 0x1

    .line 14
    :try_start_1
    invoke-static {}, Lblack/android/os/BRStrictMode;->get()Lblack/android/os/StrictModeStatic;

    move-result-object v1

    invoke-interface {v1}, Lblack/android/os/StrictModeStatic;->disableDeathOnFileUriExposure()Ljava/lang/Void;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_9

    return v0

    .line 18
    :catchall_9
    :try_start_9
    invoke-static {}, Lblack/android/os/BRStrictMode;->get()Lblack/android/os/StrictModeStatic;

    move-result-object v1

    invoke-interface {v1}, Lblack/android/os/StrictModeStatic;->sVmPolicyMask()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 19
    sget v2, Ltop/niunaijun/blackbox/utils/compat/StrictModeCompat;->DETECT_VM_FILE_URI_EXPOSURE:I

    sget v3, Ltop/niunaijun/blackbox/utils/compat/StrictModeCompat;->PENALTY_DEATH_ON_FILE_URI_EXPOSURE:I

    or-int/2addr v2, v3

    not-int v2, v2

    and-int/2addr v1, v2

    .line 20
    invoke-static {}, Lblack/android/os/BRStrictMode;->get()Lblack/android/os/StrictModeStatic;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Lblack/android/os/StrictModeStatic;->_set_sVmPolicyMask(Ljava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_28

    return v0

    :catchall_28
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method
