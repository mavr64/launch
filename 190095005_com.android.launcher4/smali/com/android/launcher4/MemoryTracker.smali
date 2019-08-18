.class public Lcom/android/launcher4/MemoryTracker;
.super Landroid/app/Service;
.source "MemoryTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/MemoryTracker$MemoryTrackerInterface;,
        Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;
    }
.end annotation


# static fields
.field public static final ACTION_START_TRACKING:Ljava/lang/String; = "com.android.launcher4.action.START_TRACKING"

.field private static final MSG_START:I = 0x1

.field private static final MSG_STOP:I = 0x2

.field private static final MSG_UPDATE:I = 0x3

.field public static final TAG:Ljava/lang/String;

.field private static final UPDATE_RATE:J = 0x1388L


# instance fields
.field mAm:Landroid/app/ActivityManager;

.field private final mBinder:Landroid/os/IBinder;

.field public final mData:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field public final mPids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPidsArray:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/launcher4/MemoryTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher4/MemoryTracker;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/MemoryTracker;->mData:Landroid/util/LongSparseArray;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/MemoryTracker;->mPids:Ljava/util/ArrayList;

    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher4/MemoryTracker;->mPidsArray:[I

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/MemoryTracker;->mLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Lcom/android/launcher4/MemoryTracker$1;

    invoke-direct {v0, p0}, Lcom/android/launcher4/MemoryTracker$1;-><init>(Lcom/android/launcher4/MemoryTracker;)V

    iput-object v0, p0, Lcom/android/launcher4/MemoryTracker;->mHandler:Landroid/os/Handler;

    .line 212
    new-instance v0, Lcom/android/launcher4/MemoryTracker$MemoryTrackerInterface;

    invoke-direct {v0, p0}, Lcom/android/launcher4/MemoryTracker$MemoryTrackerInterface;-><init>(Lcom/android/launcher4/MemoryTracker;)V

    iput-object v0, p0, Lcom/android/launcher4/MemoryTracker;->mBinder:Landroid/os/IBinder;

    .line 30
    return-void
.end method

.method public static startTrackingMe(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/launcher4/MemoryTracker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    const-string v1, "com.android.launcher4.action.START_TRACKING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 89
    const-string v1, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 90
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 92
    return-void
.end method


# virtual methods
.method public getMemInfo(I)Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;
    .locals 4
    .param p1, "pid"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/launcher4/MemoryTracker;->mData:Landroid/util/LongSparseArray;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;

    return-object v0
.end method

.method public getTrackedProcesses()[I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher4/MemoryTracker;->mPidsArray:[I

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/launcher4/MemoryTracker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 217
    iget-object v0, p0, Lcom/android/launcher4/MemoryTracker;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 14

    .prologue
    .line 161
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/android/launcher4/MemoryTracker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    iput-object v5, p0, Lcom/android/launcher4/MemoryTracker;->mAm:Landroid/app/ActivityManager;

    .line 164
    iget-object v5, p0, Lcom/android/launcher4/MemoryTracker;->mAm:Landroid/app/ActivityManager;

    const/16 v6, 0x100

    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 165
    .local v4, "svcs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 173
    iget-object v5, p0, Lcom/android/launcher4/MemoryTracker;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 174
    .local v2, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 181
    return-void

    .line 165
    .end local v2    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 166
    .local v3, "svc":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v6, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher4/MemoryTracker;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 167
    sget-object v6, Lcom/android/launcher4/MemoryTracker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "discovered running service: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v3, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget v6, v3, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    iget-object v7, v3, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, v3, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    sub-long/2addr v10, v12

    sub-long/2addr v8, v10

    .line 168
    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/launcher4/MemoryTracker;->startTrackingProcess(ILjava/lang/String;J)V

    goto :goto_0

    .line 174
    .end local v3    # "svc":Landroid/app/ActivityManager$RunningServiceInfo;
    .restart local v2    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 175
    .local v1, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 176
    .local v0, "pname":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher4/MemoryTracker;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 177
    sget-object v6, Lcom/android/launcher4/MemoryTracker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "discovered other running process: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p0, v6, v0, v8, v9}, Lcom/android/launcher4/MemoryTracker;->startTrackingProcess(ILjava/lang/String;J)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/launcher4/MemoryTracker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 186
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v8, 0x1

    .line 190
    sget-object v4, Lcom/android/launcher4/MemoryTracker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Received start id "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    if-eqz p1, :cond_0

    .line 193
    const-string v4, "com.android.launcher4.action.START_TRACKING"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    const-string v4, "pid"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 195
    .local v1, "pid":I
    const-string v4, "name"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "name":Ljava/lang/String;
    const-string v4, "start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 197
    .local v2, "start":J
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/launcher4/MemoryTracker;->startTrackingProcess(ILjava/lang/String;J)V

    .line 201
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "pid":I
    .end local v2    # "start":J
    :cond_0
    iget-object v4, p0, Lcom/android/launcher4/MemoryTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 203
    return v8
.end method

.method public startTrackingProcess(ILjava/lang/String;J)V
    .locals 7
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "start"    # J

    .prologue
    .line 103
    iget-object v2, p0, Lcom/android/launcher4/MemoryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 104
    :try_start_0
    new-instance v0, Ljava/lang/Long;

    int-to-long v4, p1

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 106
    .local v0, "lpid":Ljava/lang/Long;
    iget-object v1, p0, Lcom/android/launcher4/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v2

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p0}, Lcom/android/launcher4/MemoryTracker;->updatePidsArrayL()V

    .line 111
    iget-object v1, p0, Lcom/android/launcher4/MemoryTracker;->mData:Landroid/util/LongSparseArray;

    int-to-long v4, p1

    new-instance v3, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 103
    monitor-exit v2

    goto :goto_0

    .end local v0    # "lpid":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method update()V
    .locals 12

    .prologue
    .line 128
    iget-object v7, p0, Lcom/android/launcher4/MemoryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 129
    :try_start_0
    iget-object v6, p0, Lcom/android/launcher4/MemoryTracker;->mAm:Landroid/app/ActivityManager;

    iget-object v8, p0, Lcom/android/launcher4/MemoryTracker;->mPidsArray:[I

    invoke-virtual {v6, v8}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    .line 130
    .local v1, "dinfos":[Landroid/os/Debug$MemoryInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v1

    if-lt v2, v6, :cond_0

    .line 149
    :goto_1
    iget-object v6, p0, Lcom/android/launcher4/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_2
    if-gez v2, :cond_5

    .line 128
    monitor-exit v7

    .line 157
    return-void

    .line 131
    :cond_0
    aget-object v0, v1, v2

    .line 132
    .local v0, "dinfo":Landroid/os/Debug$MemoryInfo;
    iget-object v6, p0, Lcom/android/launcher4/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v2, v6, :cond_1

    .line 133
    sget-object v6, Lcom/android/launcher4/MemoryTracker;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "update: unknown process info received: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 128
    .end local v0    # "dinfo":Landroid/os/Debug$MemoryInfo;
    .end local v1    # "dinfos":[Landroid/os/Debug$MemoryInfo;
    .end local v2    # "i":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 136
    .restart local v0    # "dinfo":Landroid/os/Debug$MemoryInfo;
    .restart local v1    # "dinfos":[Landroid/os/Debug$MemoryInfo;
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/launcher4/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v6

    int-to-long v4, v6

    .line 137
    .local v4, "pid":J
    iget-object v6, p0, Lcom/android/launcher4/MemoryTracker;->mData:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;

    .line 138
    .local v3, "info":Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;
    iget v6, v3, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;->head:I

    add-int/lit8 v6, v6, 0x1

    iget-object v8, v3, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;->pss:[J

    array-length v8, v8

    rem-int/2addr v6, v8

    iput v6, v3, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;->head:I

    .line 139
    iget-object v6, v3, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;->pss:[J

    iget v8, v3, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;->head:I

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v9

    int-to-long v10, v9

    iput-wide v10, v3, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;->currentPss:J

    aput-wide v10, v6, v8

    .line 140
    iget-object v6, v3, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;->uss:[J

    iget v8, v3, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;->head:I

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v9

    int-to-long v10, v9

    iput-wide v10, v3, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;->currentUss:J

    aput-wide v10, v6, v8

    .line 141
    iget-wide v8, v3, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;->currentPss:J

    iget-wide v10, v3, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;->max:J

    cmp-long v6, v8, v10

    if-lez v6, :cond_2

    iget-wide v8, v3, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;->currentPss:J

    iput-wide v8, v3, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;->max:J

    .line 142
    :cond_2
    iget-wide v8, v3, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;->currentUss:J

    iget-wide v10, v3, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;->max:J

    cmp-long v6, v8, v10

    if-lez v6, :cond_3

    iget-wide v8, v3, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;->currentUss:J

    iput-wide v8, v3, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;->max:J

    .line 144
    :cond_3
    iget-wide v8, v3, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;->currentPss:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-nez v6, :cond_4

    .line 145
    sget-object v6, Lcom/android/launcher4/MemoryTracker;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "update: pid "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has pss=0, it probably died"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v6, p0, Lcom/android/launcher4/MemoryTracker;->mData:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    .line 130
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 150
    .end local v0    # "dinfo":Landroid/os/Debug$MemoryInfo;
    .end local v3    # "info":Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;
    .end local v4    # "pid":J
    :cond_5
    iget-object v6, p0, Lcom/android/launcher4/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v6

    int-to-long v4, v6

    .line 151
    .restart local v4    # "pid":J
    iget-object v6, p0, Lcom/android/launcher4/MemoryTracker;->mData:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_6

    .line 152
    iget-object v6, p0, Lcom/android/launcher4/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 153
    invoke-virtual {p0}, Lcom/android/launcher4/MemoryTracker;->updatePidsArrayL()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2
.end method

.method updatePidsArrayL()V
    .locals 6

    .prologue
    .line 116
    iget-object v4, p0, Lcom/android/launcher4/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 117
    .local v0, "N":I
    new-array v4, v0, [I

    iput-object v4, p0, Lcom/android/launcher4/MemoryTracker;->mPidsArray:[I

    .line 118
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Now tracking processes: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 119
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 124
    sget-object v4, Lcom/android/launcher4/MemoryTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void

    .line 120
    :cond_0
    iget-object v4, p0, Lcom/android/launcher4/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v2

    .line 121
    .local v2, "p":I
    iget-object v4, p0, Lcom/android/launcher4/MemoryTracker;->mPidsArray:[I

    aput v2, v4, v1

    .line 122
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
