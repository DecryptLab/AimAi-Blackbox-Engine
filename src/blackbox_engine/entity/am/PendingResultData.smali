.class public Ltop/niunaijun/blackbox/entity/am/PendingResultData;
.super Ljava/lang/Object;
.source "PendingResultData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltop/niunaijun/blackbox/entity/am/PendingResultData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAbortBroadcast:Z

.field public mBToken:Ljava/lang/String;

.field public mFinished:Z

.field public mFlags:I

.field public mInitialStickyHint:Z

.field public mOrderedHint:Z

.field public mResultCode:I

.field public mResultData:Ljava/lang/String;

.field public mResultExtras:Landroid/os/Bundle;

.field public mSendingUser:I

.field public mToken:Landroid/os/IBinder;

.field public mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 122
    new-instance v0, Ltop/niunaijun/blackbox/entity/am/PendingResultData$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/entity/am/PendingResultData$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mBToken:Ljava/lang/String;

    .line 36
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isM()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 37
    invoke-static {p1}, Lblack/android/content/BRBroadcastReceiverPendingResultM;->get(Ljava/lang/Object;)Lblack/android/content/BroadcastReceiverPendingResultMContext;

    move-result-object p1

    .line 38
    invoke-interface {p1}, Lblack/android/content/BroadcastReceiverPendingResultMContext;->mType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mType:I

    .line 39
    invoke-interface {p1}, Lblack/android/content/BroadcastReceiverPendingResultMContext;->mOrderedHint()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mOrderedHint:Z

    .line 40
    invoke-interface {p1}, Lblack/android/content/BroadcastReceiverPendingResultMContext;->mInitialStickyHint()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mInitialStickyHint:Z

    .line 41
    invoke-interface {p1}, Lblack/android/content/BroadcastReceiverPendingResultMContext;->mToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mToken:Landroid/os/IBinder;

    .line 42
    invoke-interface {p1}, Lblack/android/content/BroadcastReceiverPendingResultMContext;->mSendingUser()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mSendingUser:I

    .line 43
    invoke-interface {p1}, Lblack/android/content/BroadcastReceiverPendingResultMContext;->mFlags()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mFlags:I

    .line 44
    invoke-interface {p1}, Lblack/android/content/BroadcastReceiverPendingResultMContext;->mResultData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mResultData:Ljava/lang/String;

    .line 45
    invoke-interface {p1}, Lblack/android/content/BroadcastReceiverPendingResultMContext;->mResultExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mResultExtras:Landroid/os/Bundle;

    .line 46
    invoke-interface {p1}, Lblack/android/content/BroadcastReceiverPendingResultMContext;->mAbortBroadcast()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mAbortBroadcast:Z

    .line 47
    invoke-interface {p1}, Lblack/android/content/BroadcastReceiverPendingResultMContext;->mFinished()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mFinished:Z

    return-void

    .line 49
    :cond_70
    invoke-static {p1}, Lblack/android/content/BRBroadcastReceiverPendingResult;->get(Ljava/lang/Object;)Lblack/android/content/BroadcastReceiverPendingResultContext;

    move-result-object p1

    .line 50
    invoke-interface {p1}, Lblack/android/content/BroadcastReceiverPendingResultContext;->mType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mType:I

    .line 51
    invoke-interface {p1}, Lblack/android/content/BroadcastReceiverPendingResultContext;->mOrderedHint()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mOrderedHint:Z

    .line 52
    invoke-interface {p1}, Lblack/android/content/BroadcastReceiverPendingResultContext;->mInitialStickyHint()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mInitialStickyHint:Z

    .line 53
    invoke-interface {p1}, Lblack/android/content/BroadcastReceiverPendingResultContext;->mToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mToken:Landroid/os/IBinder;

    .line 54
    invoke-interface {p1}, Lblack/android/content/BroadcastReceiverPendingResultContext;->mSendingUser()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mSendingUser:I

    .line 55
    invoke-interface {p1}, Lblack/android/content/BroadcastReceiverPendingResultContext;->mResultData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mResultData:Ljava/lang/String;

    .line 56
    invoke-interface {p1}, Lblack/android/content/BroadcastReceiverPendingResultContext;->mResultExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mResultExtras:Landroid/os/Bundle;

    .line 57
    invoke-interface {p1}, Lblack/android/content/BroadcastReceiverPendingResultContext;->mAbortBroadcast()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mAbortBroadcast:Z

    .line 58
    invoke-interface {p1}, Lblack/android/content/BroadcastReceiverPendingResultContext;->mFinished()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mFinished:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mType:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    iput-boolean v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mOrderedHint:Z

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    iput-boolean v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mInitialStickyHint:Z

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mToken:Landroid/os/IBinder;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mSendingUser:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mFlags:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mResultCode:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mResultData:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mResultExtras:Landroid/os/Bundle;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4d

    move v0, v1

    goto :goto_4e

    :cond_4d
    move v0, v2

    :goto_4e
    iput-boolean v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mAbortBroadcast:Z

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_57

    goto :goto_58

    :cond_57
    move v1, v2

    :goto_58
    iput-boolean v1, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mFinished:Z

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mBToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Landroid/content/BroadcastReceiver$PendingResult;
    .registers 12

    .line 63
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isM()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 64
    invoke-static {}, Lblack/android/content/BRBroadcastReceiverPendingResultM;->get()Lblack/android/content/BroadcastReceiverPendingResultMStatic;

    move-result-object v1

    iget v2, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mResultCode:I

    iget-object v3, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mResultData:Ljava/lang/String;

    iget-object v4, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mResultExtras:Landroid/os/Bundle;

    iget v5, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mType:I

    iget-boolean v6, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mOrderedHint:Z

    iget-boolean v7, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mInitialStickyHint:Z

    iget-object v8, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mToken:Landroid/os/IBinder;

    iget v9, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mSendingUser:I

    iget v10, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mFlags:I

    invoke-interface/range {v1 .. v10}, Lblack/android/content/BroadcastReceiverPendingResultMStatic;->_new(ILjava/lang/String;Landroid/os/Bundle;IZZLandroid/os/IBinder;II)Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p0

    return-object p0

    .line 66
    :cond_21
    invoke-static {}, Lblack/android/content/BRBroadcastReceiverPendingResult;->get()Lblack/android/content/BroadcastReceiverPendingResultStatic;

    move-result-object v0

    iget v1, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mResultCode:I

    iget-object v2, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mResultData:Ljava/lang/String;

    iget-object v3, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mResultExtras:Landroid/os/Bundle;

    iget v4, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mType:I

    iget-boolean v5, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mOrderedHint:Z

    iget-boolean v6, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mInitialStickyHint:Z

    iget-object v7, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mToken:Landroid/os/IBinder;

    iget v8, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mSendingUser:I

    invoke-interface/range {v0 .. v8}, Lblack/android/content/BroadcastReceiverPendingResultStatic;->_new(ILjava/lang/String;Landroid/os/Bundle;IZZLandroid/os/IBinder;I)Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mType:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    iput-boolean v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mOrderedHint:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    goto :goto_1c

    :cond_1b
    move v0, v2

    :goto_1c
    iput-boolean v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mInitialStickyHint:Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mToken:Landroid/os/IBinder;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mSendingUser:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mFlags:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mResultCode:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mResultData:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mResultExtras:Landroid/os/Bundle;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4a

    move v0, v1

    goto :goto_4b

    :cond_4a
    move v0, v2

    :goto_4b
    iput-boolean v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mAbortBroadcast:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_54

    goto :goto_55

    :cond_54
    move v1, v2

    :goto_55
    iput-boolean v1, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mFinished:Z

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mBToken:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PendingResultData{mType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOrderedHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mOrderedHint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInitialStickyHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mInitialStickyHint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSendingUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mSendingUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mResultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResultData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mResultData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mResultExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mResultExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAbortBroadcast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mAbortBroadcast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFinished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mFinished:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 78
    iget p2, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-boolean p2, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mOrderedHint:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 80
    iget-boolean p2, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mInitialStickyHint:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 81
    iget-object p2, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 82
    iget p2, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mSendingUser:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget p2, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget p2, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mResultCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object p2, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mResultData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mResultExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 87
    iget-boolean p2, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mAbortBroadcast:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 88
    iget-boolean p2, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mFinished:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 89
    iget-object p0, p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mBToken:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

###### Class top.niunaijun.blackbox.entity.am.PendingResultData.AnonymousClass1 (top.niunaijun.blackbox.entity.am.PendingResultData$1)
