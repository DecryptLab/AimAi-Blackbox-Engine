.class public Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;
.super Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService$Stub;
.source "BNotificationManagerService.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/ISystemService;


# static fields
.field public static final CHANNEL_BLACK:Ljava/lang/String; = "@black-"

.field public static final GROUP_BLACK:Ljava/lang/String; = "@black-group-"

.field private static final MIN_NOTIFICATION_ID:I = 0x1

.field private static final sService:Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;


# instance fields
.field private mNotificationChannelManager:Ltop/niunaijun/blackbox/core/system/notification/NotificationChannelManager;

.field private final mNotificationRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->sService:Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/notification/IBNotificationManagerService$Stub;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->mNotificationRecords:Ljava/util/Map;

    .line 44
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->mRealNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;
    .registers 1

    .line 47
    sget-object v0, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->sService:Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;

    return-object v0
.end method

.method private getBlackChannelId(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_21

    .line 281
    const-string p0, "@black-"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_21

    .line 284
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    :goto_21
    return-object p1
.end method

.method private getBlackGroupId(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_21

    .line 295
    const-string p0, "@black-group-"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_21

    .line 297
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    :goto_21
    return-object p1
.end method

.method public static getNotificationId(IILjava/lang/String;)I
    .registers 4

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    if-nez p0, :cond_20

    const/4 p0, 0x1

    :cond_20
    return p0
.end method

.method private getNotificationRecord(Ljava/lang/String;I)Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;
    .registers 4

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->mNotificationRecords:Ljava/util/Map;

    monitor-enter p2

    .line 59
    :try_start_1a
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->mNotificationRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;

    if-nez v0, :cond_2e

    .line 61
    new-instance v0, Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;-><init>()V

    .line 62
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->mNotificationRecords:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_2e
    monitor-exit p2

    return-object v0

    :catchall_30
    move-exception p0

    .line 65
    monitor-exit p2
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_30

    throw p0
.end method

.method private getRealChannelId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_13

    .line 288
    const-string p0, "@black-"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_13

    .line 291
    :cond_b
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_13
    :goto_13
    return-object p1
.end method

.method private getRealGroupId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_13

    .line 301
    const-string p0, "@black-group-"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_13

    .line 303
    :cond_b
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_13
    :goto_13
    return-object p1
.end method

.method private handleNotificationChannel(Landroid/app/NotificationChannel;I)V
    .registers 5

    .line 218
    invoke-static {p1}, Lblack/android/app/BRNotificationChannel;->get(Ljava/lang/Object;)Lblack/android/app/NotificationChannelContext;

    move-result-object v0

    .line 219
    invoke-interface {v0}, Lblack/android/app/NotificationChannelContext;->mId()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-direct {p0, v1, p2}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getBlackChannelId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-interface {v0, v1}, Lblack/android/app/NotificationChannelContext;->_set_mId(Ljava/lang/Object;)V

    .line 223
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getBlackGroupId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    return-void
.end method

.method private handleNotificationGroup(Landroid/app/NotificationChannelGroup;I)V
    .registers 4

    .line 234
    invoke-static {p1}, Lblack/android/app/BRNotificationChannelGroup;->get(Ljava/lang/Object;)Lblack/android/app/NotificationChannelGroupContext;

    move-result-object p1

    .line 235
    invoke-interface {p1}, Lblack/android/app/NotificationChannelGroupContext;->mId()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-direct {p0, v0, p2}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getBlackGroupId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-interface {p1, v0}, Lblack/android/app/NotificationChannelGroupContext;->_set_mId(Ljava/lang/Object;)V

    .line 239
    invoke-interface {p1}, Lblack/android/app/NotificationChannelGroupContext;->mChannels()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 241
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    .line 242
    invoke-virtual {p0, v0, p2}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->createNotificationChannel(Landroid/app/NotificationChannel;I)V

    goto :goto_19

    :cond_29
    return-void
.end method

.method private removeNotificationRecord(Ljava/lang/String;I)V
    .registers 4

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->mNotificationRecords:Ljava/util/Map;

    monitor-enter p2

    .line 71
    :try_start_1a
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->mNotificationRecords:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    monitor-exit p2

    return-void

    :catchall_21
    move-exception p0

    monitor-exit p2
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_21

    throw p0
.end method

.method private resetNotificationChannel(Landroid/app/NotificationChannel;)V
    .registers 3

    .line 227
    invoke-static {p1}, Lblack/android/app/BRNotificationChannel;->get(Ljava/lang/Object;)Lblack/android/app/NotificationChannelContext;

    move-result-object p1

    .line 228
    invoke-interface {p1}, Lblack/android/app/NotificationChannelContext;->mId()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getRealChannelId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 230
    invoke-interface {p1, p0}, Lblack/android/app/NotificationChannelContext;->_set_mId(Ljava/lang/Object;)V

    return-void
.end method

.method private resetNotificationGroup(Landroid/app/NotificationChannelGroup;)V
    .registers 3

    .line 248
    invoke-static {p1}, Lblack/android/app/BRNotificationChannelGroup;->get(Ljava/lang/Object;)Lblack/android/app/NotificationChannelGroupContext;

    move-result-object p1

    .line 249
    invoke-interface {p1}, Lblack/android/app/NotificationChannelGroupContext;->mId()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getRealGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-interface {p1, v0}, Lblack/android/app/NotificationChannelGroupContext;->_set_mId(Ljava/lang/Object;)V

    .line 253
    invoke-interface {p1}, Lblack/android/app/NotificationChannelGroupContext;->mChannels()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 255
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    .line 256
    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->resetNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_19

    :cond_29
    return-void
.end method


# virtual methods
.method public cancelNotificationWithTag(ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p2, v0}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object p2

    if-nez p2, :cond_f

    return-void

    .line 207
    :cond_f
    invoke-virtual {p2}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p1, v0}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getNotificationId(IILjava/lang/String;)I

    move-result p1

    .line 208
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->mRealNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 210
    invoke-virtual {p2}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getNotificationRecord(Ljava/lang/String;I)Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;

    move-result-object p0

    .line 211
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;->mIds:Ljava/util/Set;

    monitor-enter p2

    .line 212
    :try_start_27
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;->mIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 213
    monitor-exit p2

    return-void

    :catchall_32
    move-exception p0

    monitor-exit p2
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public createNotificationChannel(Landroid/app/NotificationChannel;I)V
    .registers 5

    .line 107
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getCallingPid()I

    move-result v0

    .line 108
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 111
    :cond_f
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->handleNotificationChannel(Landroid/app/NotificationChannel;I)V

    .line 112
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->mRealNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 114
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->resetNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 115
    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getNotificationRecord(Ljava/lang/String;I)Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;

    move-result-object p0

    .line 116
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;->mNotificationChannels:Ljava/util/Map;

    monitor-enter p2

    .line 117
    :try_start_25
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;->mNotificationChannels:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    monitor-exit p2

    return-void

    :catchall_30
    move-exception p0

    monitor-exit p2
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;I)V
    .registers 5

    .line 141
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getCallingPid()I

    move-result v0

    .line 142
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 145
    :cond_f
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->handleNotificationGroup(Landroid/app/NotificationChannelGroup;I)V

    .line 146
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->mRealNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    .line 148
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->resetNotificationGroup(Landroid/app/NotificationChannelGroup;)V

    .line 149
    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getNotificationRecord(Ljava/lang/String;I)Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;

    move-result-object p0

    .line 150
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;->mNotificationChannelGroups:Ljava/util/Map;

    monitor-enter p2

    .line 151
    :try_start_25
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;->mNotificationChannelGroups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    monitor-exit p2

    return-void

    :catchall_30
    move-exception p0

    monitor-exit p2
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public deleteNotificationChannel(Ljava/lang/String;I)V
    .registers 5

    .line 124
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getCallingPid()I

    move-result v0

    .line 125
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 128
    :cond_f
    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getNotificationRecord(Ljava/lang/String;I)Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;

    move-result-object v0

    .line 129
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;->mNotificationChannels:Ljava/util/Map;

    monitor-enter v1

    .line 130
    :try_start_1a
    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;->mNotificationChannels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;

    if-eqz p1, :cond_31

    .line 132
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getBlackChannelId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 133
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->mRealNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 135
    :cond_31
    monitor-exit v1

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_1a .. :try_end_35} :catchall_33

    throw p0
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;I)V
    .registers 5

    .line 158
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getCallingPid()I

    move-result v0

    .line 159
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 162
    :cond_f
    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getNotificationRecord(Ljava/lang/String;I)Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;

    move-result-object v0

    .line 163
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;->mNotificationChannelGroups:Ljava/util/Map;

    monitor-enter v1

    .line 164
    :try_start_1a
    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;->mNotificationChannelGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannelGroup;

    if-eqz p1, :cond_31

    .line 166
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getBlackGroupId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 167
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->mRealNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->deleteNotificationChannelGroup(Ljava/lang/String;)V

    .line 169
    :cond_31
    monitor-exit v1

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_1a .. :try_end_35} :catchall_33

    throw p0
.end method

.method public deletePackageNotification(Ljava/lang/String;I)V
    .registers 7

    .line 263
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getNotificationRecord(Ljava/lang/String;I)Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;

    move-result-object v0

    .line 264
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isOreo()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 265
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;->mNotificationChannelGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannelGroup;

    .line 266
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getBlackGroupId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 267
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->mRealNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->deleteNotificationChannelGroup(Ljava/lang/String;)V

    goto :goto_14

    .line 269
    :cond_2e
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;->mNotificationChannels:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 270
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getBlackChannelId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 271
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->mRealNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    goto :goto_38

    .line 274
    :cond_52
    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;->mIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 275
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->mRealNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_58

    .line 277
    :cond_6e
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->removeNotificationRecord(Ljava/lang/String;I)V

    return-void
.end method

.method public enqueueNotificationWithTag(ILjava/lang/String;Landroid/app/Notification;I)V
    .registers 6

    .line 174
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p2, v0}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object p2

    if-nez p2, :cond_f

    return-void

    .line 177
    :cond_f
    invoke-virtual {p2}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, p1, v0}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getNotificationId(IILjava/lang/String;)I

    move-result p1

    .line 179
    invoke-virtual {p0, p3, p4}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->prepareNotificationForHost(Landroid/app/Notification;I)V

    .line 180
    invoke-virtual {p2}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p4}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getNotificationRecord(Ljava/lang/String;I)Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;

    move-result-object p2

    .line 181
    iget-object p4, p2, Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;->mIds:Ljava/util/Set;

    monitor-enter p4

    .line 182
    :try_start_25
    iget-object p2, p2, Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;->mIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    monitor-exit p4
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_35

    .line 184
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->mRealNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :catchall_35
    move-exception p0

    .line 183
    :try_start_36
    monitor-exit p4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public getNotificationChannel(Ljava/lang/String;I)Landroid/app/NotificationChannel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getCallingPid()I

    move-result v0

    .line 79
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_10
    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getNotificationRecord(Ljava/lang/String;I)Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;

    move-result-object p0

    .line 83
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;->mNotificationChannels:Ljava/util/Map;

    monitor-enter p2

    .line 84
    :try_start_1b
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;->mNotificationChannels:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationChannel;

    monitor-exit p2

    return-object p0

    :catchall_25
    move-exception p0

    .line 85
    monitor-exit p2
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_25

    throw p0
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getNotificationRecord(Ljava/lang/String;I)Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;

    move-result-object p0

    .line 99
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;->mNotificationChannelGroups:Ljava/util/Map;

    monitor-enter p1

    .line 100
    :try_start_7
    new-instance p2, Ljava/util/ArrayList;

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;->mNotificationChannelGroups:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p1

    return-object p2

    :catchall_14
    move-exception p0

    .line 101
    monitor-exit p1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public getNotificationChannels(Ljava/lang/String;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getNotificationRecord(Ljava/lang/String;I)Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;

    move-result-object p0

    .line 91
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;->mNotificationChannels:Ljava/util/Map;

    monitor-enter p1

    .line 92
    :try_start_7
    new-instance p2, Ljava/util/ArrayList;

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/notification/NotificationRecord;->mNotificationChannels:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p1

    return-object p2

    :catchall_14
    move-exception p0

    .line 93
    monitor-exit p1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public prepareNotificationForHost(Landroid/app/Notification;I)V
    .registers 4

    .line 188
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2d

    .line 191
    :cond_7
    invoke-static {p1}, Lblack/android/app/BRNotificationO;->getWithException(Ljava/lang/Object;)Lblack/android/app/NotificationOContext;

    move-result-object p1

    .line 192
    invoke-interface {p1}, Lblack/android/app/NotificationOContext;->_check_mChannelId()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 194
    invoke-interface {p1}, Lblack/android/app/NotificationOContext;->mChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getBlackChannelId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-interface {p1, v0}, Lblack/android/app/NotificationOContext;->_set_mChannelId(Ljava/lang/Object;)V

    .line 196
    :cond_1c
    invoke-interface {p1}, Lblack/android/app/NotificationOContext;->_check_mGroupKey()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 198
    invoke-interface {p1}, Lblack/android/app/NotificationOContext;->mGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getBlackGroupId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 197
    invoke-interface {p1, p0}, Lblack/android/app/NotificationOContext;->_set_mGroupKey(Ljava/lang/Object;)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public systemReady()V
    .registers 2

    .line 52
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/notification/NotificationChannelManager;->get()Ltop/niunaijun/blackbox/core/system/notification/NotificationChannelManager;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->mNotificationChannelManager:Ltop/niunaijun/blackbox/core/system/notification/NotificationChannelManager;

    return-void
.end method
