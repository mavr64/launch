.class Lcom/android/launcher4/LauncherModel$6;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherModel;->checkItemInfo(Lcom/android/launcher4/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$item:Lcom/android/launcher4/ItemInfo;

.field private final synthetic val$itemId:J

.field private final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;


# direct methods
.method constructor <init>(JLcom/android/launcher4/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 1

    .prologue
    .line 1
    iput-wide p1, p0, Lcom/android/launcher4/LauncherModel$6;->val$itemId:J

    iput-object p3, p0, Lcom/android/launcher4/LauncherModel$6;->val$item:Lcom/android/launcher4/ItemInfo;

    iput-object p4, p0, Lcom/android/launcher4/LauncherModel$6;->val$stackTrace:[Ljava/lang/StackTraceElement;

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 637
    sget-object v1, Lcom/android/launcher4/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 638
    :try_start_0
    iget-wide v2, p0, Lcom/android/launcher4/LauncherModel$6;->val$itemId:J

    iget-object v0, p0, Lcom/android/launcher4/LauncherModel$6;->val$item:Lcom/android/launcher4/ItemInfo;

    iget-object v4, p0, Lcom/android/launcher4/LauncherModel$6;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v2, v3, v0, v4}, Lcom/android/launcher4/LauncherModel;->checkItemInfoLocked(JLcom/android/launcher4/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 637
    monitor-exit v1

    .line 640
    return-void

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
