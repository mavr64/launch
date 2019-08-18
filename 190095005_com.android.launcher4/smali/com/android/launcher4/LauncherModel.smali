.class public Lcom/android/launcher4/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/LauncherModel$Callbacks;,
        Lcom/android/launcher4/LauncherModel$ItemInfoFilter;,
        Lcom/android/launcher4/LauncherModel$LoaderTask;,
        Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;,
        Lcom/android/launcher4/LauncherModel$ShortcutNameComparator;,
        Lcom/android/launcher4/LauncherModel$WidgetAndShortcutNameComparator;
    }
.end annotation


# static fields
.field public static final APP_INSTALL_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG_LOADERS:Z = false

.field private static final ITEMS_CHUNK:I = 0x6

.field private static final MAIN_THREAD_BINDING_RUNNABLE:I = 0x1

.field private static final MAIN_THREAD_NORMAL_RUNNABLE:I = 0x0

.field static final TAG:Ljava/lang/String; = "Launcher.Model"

.field public static final UPGRADE_USE_MORE_APPS_FOLDER:Z

.field static final mDeferredBindRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgDbIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[B>;"
        }
    .end annotation
.end field

.field static final sBgFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher4/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgItemsIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher4/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgLock:Ljava/lang/Object;

.field static final sBgWorkspaceItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgWorkspaceScreens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private mAllAppsLoaded:Z

.field private final mApp:Lcom/android/launcher4/LauncherAppState;

.field private final mAppsCanBeOnRemoveableStorage:Z

.field mBgAllAppsList:Lcom/android/launcher4/AllAppsList;

.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher4/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultIcon:Landroid/graphics/Bitmap;

.field mFirstUse:Z

.field private volatile mFlushingWorkerThread:Z

.field private mHandler:Lcom/android/launcher4/DeferredHandler;

.field private mIconCache:Lcom/android/launcher4/IconCache;

.field private mIsLoaderTaskRunning:Z

.field private mLoaderTask:Lcom/android/launcher4/LauncherModel$LoaderTask;

.field private final mLock:Ljava/lang/Object;

.field protected mPreviousConfigMcc:I

.field private mWorkspaceLoaded:Z

.field reload:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Landroid/os/HandlerThread;

    .line 109
    const-string v1, "launcher-loader"

    .line 108
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher4/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 111
    sget-object v0, Lcom/android/launcher4/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 113
    new-instance v0, Landroid/os/Handler;

    .line 114
    sget-object v1, Lcom/android/launcher4/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 113
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher4/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher4/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher4/LauncherModel;->sBgLock:Ljava/lang/Object;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher4/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher4/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher4/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher4/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    .line 3533
    new-instance v0, Lcom/android/launcher4/LauncherModel$2;

    invoke-direct {v0}, Lcom/android/launcher4/LauncherModel$2;-><init>()V

    sput-object v0, Lcom/android/launcher4/LauncherModel;->APP_INSTALL_TIME_COMPARATOR:Ljava/util/Comparator;

    .line 3541
    return-void
.end method

.method constructor <init>(Lcom/android/launcher4/LauncherAppState;Lcom/android/launcher4/IconCache;Lcom/android/launcher4/AppFilter;)V
    .locals 7
    .param p1, "app"    # Lcom/android/launcher4/LauncherAppState;
    .param p2, "iconCache"    # Lcom/android/launcher4/IconCache;
    .param p3, "appFilter"    # Lcom/android/launcher4/AppFilter;

    .prologue
    const/4 v6, 0x1

    .line 230
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 95
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/launcher4/LauncherModel;->mLock:Ljava/lang/Object;

    .line 96
    new-instance v5, Lcom/android/launcher4/DeferredHandler;

    invoke-direct {v5}, Lcom/android/launcher4/DeferredHandler;-><init>()V

    iput-object v5, p0, Lcom/android/launcher4/LauncherModel;->mHandler:Lcom/android/launcher4/DeferredHandler;

    .line 180
    iput-boolean v6, p0, Lcom/android/launcher4/LauncherModel;->mFirstUse:Z

    .line 267
    new-instance v5, Lcom/android/launcher4/LauncherModel$1;

    invoke-direct {v5, p0}, Lcom/android/launcher4/LauncherModel$1;-><init>(Lcom/android/launcher4/LauncherModel;)V

    iput-object v5, p0, Lcom/android/launcher4/LauncherModel;->reload:Ljava/lang/Runnable;

    .line 231
    invoke-virtual {p1}, Lcom/android/launcher4/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 233
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, "spKey":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 235
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v5, "first_use"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/launcher4/LauncherModel;->mFirstUse:Z

    .line 239
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v5

    .line 238
    iput-boolean v5, p0, Lcom/android/launcher4/LauncherModel;->mAppsCanBeOnRemoveableStorage:Z

    .line 240
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel;->mApp:Lcom/android/launcher4/LauncherAppState;

    .line 241
    new-instance v5, Lcom/android/launcher4/AllAppsList;

    invoke-direct {v5, p2, p3}, Lcom/android/launcher4/AllAppsList;-><init>(Lcom/android/launcher4/IconCache;Lcom/android/launcher4/AppFilter;)V

    iput-object v5, p0, Lcom/android/launcher4/LauncherModel;->mBgAllAppsList:Lcom/android/launcher4/AllAppsList;

    .line 242
    iput-object p2, p0, Lcom/android/launcher4/LauncherModel;->mIconCache:Lcom/android/launcher4/IconCache;

    .line 245
    iget-object v5, p0, Lcom/android/launcher4/LauncherModel;->mIconCache:Lcom/android/launcher4/IconCache;

    invoke-virtual {v5}, Lcom/android/launcher4/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 244
    invoke-static {v5, v1}, Lcom/android/launcher4/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher4/LauncherModel;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 247
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 248
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 249
    .local v0, "config":Landroid/content/res/Configuration;
    iget v5, v0, Landroid/content/res/Configuration;->mcc:I

    iput v5, p0, Lcom/android/launcher4/LauncherModel;->mPreviousConfigMcc:I

    .line 250
    if-eqz p3, :cond_0

    .line 251
    invoke-virtual {p3}, Lcom/android/launcher4/AppFilter;->register()V

    .line 252
    instance-of v5, p3, Lcom/syu/car/CustomFilter;

    if-eqz v5, :cond_0

    .line 253
    check-cast p3, Lcom/syu/car/CustomFilter;

    .end local p3    # "appFilter":Lcom/android/launcher4/AppFilter;
    new-instance v5, Lcom/android/launcher4/LauncherModel$3;

    invoke-direct {v5, p0}, Lcom/android/launcher4/LauncherModel$3;-><init>(Lcom/android/launcher4/LauncherModel;)V

    invoke-virtual {p3, v5}, Lcom/syu/car/CustomFilter;->setCallback(Lcom/syu/car/CustomFilter$RefreshCallback;)V

    .line 265
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/LauncherModel;)V
    .locals 0

    .prologue
    .line 1349
    invoke-direct {p0}, Lcom/android/launcher4/LauncherModel;->forceReload()V

    return-void
.end method

.method static synthetic access$1(Lcom/android/launcher4/LauncherModel;)Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/launcher4/LauncherModel;->mWorkspaceLoaded:Z

    return v0
.end method

.method static synthetic access$10(Lcom/android/launcher4/LauncherModel;Lcom/android/launcher4/LauncherModel$LoaderTask;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel;->mLoaderTask:Lcom/android/launcher4/LauncherModel$LoaderTask;

    return-void
.end method

.method static synthetic access$11(Lcom/android/launcher4/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$12(Lcom/android/launcher4/LauncherModel;)Lcom/android/launcher4/LauncherAppState;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel;->mApp:Lcom/android/launcher4/LauncherAppState;

    return-object v0
.end method

.method static synthetic access$13(Lcom/android/launcher4/LauncherModel;Landroid/content/ComponentName;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 3215
    invoke-direct {p0, p1}, Lcom/android/launcher4/LauncherModel;->getItemInfoForComponentName(Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14(Lcom/android/launcher4/LauncherModel;Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .locals 1

    .prologue
    .line 3046
    invoke-direct {p0, p1, p2}, Lcom/android/launcher4/LauncherModel;->isValidPackageComponent(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$15(Lcom/android/launcher4/LauncherModel;)Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/launcher4/LauncherModel;->mAppsCanBeOnRemoveableStorage:Z

    return v0
.end method

.method static synthetic access$16(Lcom/android/launcher4/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher4/ShortcutInfo;
    .locals 1

    .prologue
    .line 3247
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher4/LauncherModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher4/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17(Ljava/util/HashMap;J)Lcom/android/launcher4/FolderInfo;
    .locals 1

    .prologue
    .line 3507
    invoke-static {p0, p1, p2}, Lcom/android/launcher4/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher4/FolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18(Landroid/content/Context;)Ljava/util/TreeMap;
    .locals 1

    .prologue
    .line 1458
    invoke-static {p0}, Lcom/android/launcher4/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19(Lcom/android/launcher4/LauncherModel;Ljava/lang/Runnable;I)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0, p1, p2}, Lcom/android/launcher4/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;I)V

    return-void
.end method

.method static synthetic access$2(Lcom/android/launcher4/LauncherModel;Z)V
    .locals 0

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/launcher4/LauncherModel;->mWorkspaceLoaded:Z

    return-void
.end method

.method static synthetic access$20(Lcom/android/launcher4/LauncherModel;Z)V
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/launcher4/LauncherModel;->mAllAppsLoaded:Z

    return-void
.end method

.method static synthetic access$21()Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/launcher4/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$22(Lcom/android/launcher4/LauncherModel;)Lcom/android/launcher4/IconCache;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel;->mIconCache:Lcom/android/launcher4/IconCache;

    return-object v0
.end method

.method static synthetic access$23(Lcom/android/launcher4/LauncherModel;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 3204
    invoke-direct {p0, p1}, Lcom/android/launcher4/LauncherModel;->getItemInfoForPackageName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$24()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/android/launcher4/LauncherModel;->sWorker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$25(Lcom/android/launcher4/LauncherModel;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/android/launcher4/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$26(Lcom/android/launcher4/LauncherModel;Z)V
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/launcher4/LauncherModel;->mFlushingWorkerThread:Z

    return-void
.end method

.method static synthetic access$3(Lcom/android/launcher4/LauncherModel;)Lcom/android/launcher4/DeferredHandler;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel;->mHandler:Lcom/android/launcher4/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/launcher4/LauncherModel;)Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/launcher4/LauncherModel;->mFlushingWorkerThread:Z

    return v0
.end method

.method static synthetic access$5(Lcom/android/launcher4/LauncherModel;)Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/launcher4/LauncherModel;->mAllAppsLoaded:Z

    return v0
.end method

.method static synthetic access$6(Lcom/android/launcher4/LauncherModel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/launcher4/LauncherModel;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/launcher4/LauncherModel;->mIsLoaderTaskRunning:Z

    return v0
.end method

.method static synthetic access$8(Lcom/android/launcher4/LauncherModel;Z)V
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/launcher4/LauncherModel;->mIsLoaderTaskRunning:Z

    return-void
.end method

.method static synthetic access$9(Lcom/android/launcher4/LauncherModel;)Lcom/android/launcher4/LauncherModel$LoaderTask;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel;->mLoaderTask:Lcom/android/launcher4/LauncherModel$LoaderTask;

    return-object v0
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;JJIIZ)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/launcher4/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I
    .param p8, "notify"    # Z

    .prologue
    .line 1016
    iput-wide p2, p1, Lcom/android/launcher4/ItemInfo;->container:J

    .line 1017
    iput p6, p1, Lcom/android/launcher4/ItemInfo;->cellX:I

    .line 1018
    iput p7, p1, Lcom/android/launcher4/ItemInfo;->cellY:I

    .line 1022
    instance-of v3, p0, Lcom/android/launcher4/Launcher;

    if-eqz v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-gez v3, :cond_0

    .line 1023
    const-wide/16 v4, -0x65

    cmp-long v3, p2, v4

    if-eqz v3, :cond_1

    .line 1027
    :cond_0
    iput-wide p4, p1, Lcom/android/launcher4/ItemInfo;->screenId:J

    .line 1030
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1031
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1032
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1, v2}, Lcom/android/launcher4/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 1034
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getLauncherProvider()Lcom/android/launcher4/LauncherProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher4/LauncherProvider;->generateNewItemId()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/launcher4/ItemInfo;->id:J

    .line 1035
    const-string v3, "_id"

    iget-wide v4, p1, Lcom/android/launcher4/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1036
    iget v3, p1, Lcom/android/launcher4/ItemInfo;->cellX:I

    iget v4, p1, Lcom/android/launcher4/ItemInfo;->cellY:I

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/launcher4/ItemInfo;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    .line 1038
    new-instance v1, Lcom/android/launcher4/LauncherModel$10;

    invoke-direct {v1, v0, p8, v2, p1}, Lcom/android/launcher4/LauncherModel$10;-><init>(Landroid/content/ContentResolver;ZLandroid/content/ContentValues;Lcom/android/launcher4/ItemInfo;)V

    .line 1076
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/launcher4/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1077
    return-void
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;JJII)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/launcher4/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I

    .prologue
    .line 576
    iget-wide v0, p1, Lcom/android/launcher4/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 579
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    .line 578
    invoke-static/range {v0 .. v8}, Lcom/android/launcher4/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;JJIIZ)V

    .line 584
    :goto_0
    return-void

    .line 582
    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/android/launcher4/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;JJII)V

    goto :goto_0
.end method

.method static checkItemInfo(Lcom/android/launcher4/ItemInfo;)V
    .locals 5
    .param p0, "item"    # Lcom/android/launcher4/ItemInfo;

    .prologue
    .line 633
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 634
    .local v3, "stackTrace":[Ljava/lang/StackTraceElement;
    iget-wide v0, p0, Lcom/android/launcher4/ItemInfo;->id:J

    .line 635
    .local v0, "itemId":J
    new-instance v2, Lcom/android/launcher4/LauncherModel$6;

    invoke-direct {v2, v0, v1, p0, v3}, Lcom/android/launcher4/LauncherModel$6;-><init>(JLcom/android/launcher4/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 642
    .local v2, "r":Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/launcher4/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 643
    return-void
.end method

.method static checkItemInfoLocked(JLcom/android/launcher4/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 12
    .param p0, "itemId"    # J
    .param p2, "item"    # Lcom/android/launcher4/ItemInfo;
    .param p3, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 588
    sget-object v5, Lcom/android/launcher4/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/ItemInfo;

    .line 589
    .local v1, "modelItem":Lcom/android/launcher4/ItemInfo;
    if-eqz v1, :cond_1

    if-eq p2, v1, :cond_1

    .line 591
    instance-of v5, v1, Lcom/android/launcher4/ShortcutInfo;

    if-eqz v5, :cond_2

    .line 592
    instance-of v5, p2, Lcom/android/launcher4/ShortcutInfo;

    if-eqz v5, :cond_2

    move-object v2, v1

    .line 593
    check-cast v2, Lcom/android/launcher4/ShortcutInfo;

    .local v2, "modelShortcut":Lcom/android/launcher4/ShortcutInfo;
    move-object v4, p2

    .line 594
    check-cast v4, Lcom/android/launcher4/ShortcutInfo;

    .line 595
    .local v4, "shortcut":Lcom/android/launcher4/ShortcutInfo;
    iget-object v5, v2, Lcom/android/launcher4/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 596
    iget-object v6, v4, Lcom/android/launcher4/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 595
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 596
    if-eqz v5, :cond_2

    .line 597
    iget-object v5, v2, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    iget-object v6, v4, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 598
    iget-wide v6, v2, Lcom/android/launcher4/ShortcutInfo;->id:J

    iget-wide v8, v4, Lcom/android/launcher4/ShortcutInfo;->id:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 599
    iget v5, v2, Lcom/android/launcher4/ShortcutInfo;->itemType:I

    iget v6, v4, Lcom/android/launcher4/ShortcutInfo;->itemType:I

    if-ne v5, v6, :cond_2

    .line 600
    iget-wide v6, v2, Lcom/android/launcher4/ShortcutInfo;->container:J

    iget-wide v8, v4, Lcom/android/launcher4/ShortcutInfo;->container:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 601
    iget-wide v6, v2, Lcom/android/launcher4/ShortcutInfo;->screenId:J

    iget-wide v8, v4, Lcom/android/launcher4/ShortcutInfo;->screenId:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 602
    iget v5, v2, Lcom/android/launcher4/ShortcutInfo;->cellX:I

    iget v6, v4, Lcom/android/launcher4/ShortcutInfo;->cellX:I

    if-ne v5, v6, :cond_2

    .line 603
    iget v5, v2, Lcom/android/launcher4/ShortcutInfo;->cellY:I

    iget v6, v4, Lcom/android/launcher4/ShortcutInfo;->cellY:I

    if-ne v5, v6, :cond_2

    .line 604
    iget v5, v2, Lcom/android/launcher4/ShortcutInfo;->spanX:I

    iget v6, v4, Lcom/android/launcher4/ShortcutInfo;->spanX:I

    if-ne v5, v6, :cond_2

    .line 605
    iget v5, v2, Lcom/android/launcher4/ShortcutInfo;->spanY:I

    iget v6, v4, Lcom/android/launcher4/ShortcutInfo;->spanY:I

    if-ne v5, v6, :cond_2

    .line 606
    iget-object v5, v2, Lcom/android/launcher4/ShortcutInfo;->dropPos:[I

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/android/launcher4/ShortcutInfo;->dropPos:[I

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, v2, Lcom/android/launcher4/ShortcutInfo;->dropPos:[I

    if-eqz v5, :cond_2

    .line 607
    iget-object v5, v4, Lcom/android/launcher4/ShortcutInfo;->dropPos:[I

    if-eqz v5, :cond_2

    .line 608
    iget-object v5, v2, Lcom/android/launcher4/ShortcutInfo;->dropPos:[I

    aget v5, v5, v10

    iget-object v6, v4, Lcom/android/launcher4/ShortcutInfo;->dropPos:[I

    aget v6, v6, v10

    if-ne v5, v6, :cond_2

    iget-object v5, v2, Lcom/android/launcher4/ShortcutInfo;->dropPos:[I

    aget v5, v5, v11

    iget-object v6, v4, Lcom/android/launcher4/ShortcutInfo;->dropPos:[I

    aget v6, v6, v11

    if-ne v5, v6, :cond_2

    .line 630
    .end local v2    # "modelShortcut":Lcom/android/launcher4/ShortcutInfo;
    .end local v4    # "shortcut":Lcom/android/launcher4/ShortcutInfo;
    :cond_1
    :goto_0
    return-void

    .line 618
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "item: "

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 619
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/launcher4/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 620
    const-string v6, "modelItem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 621
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/launcher4/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 622
    const-string v6, "Error: ItemInfo passed to checkItemInfo doesn\'t match original"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 618
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 623
    .local v3, "msg":Ljava/lang/String;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 624
    .local v0, "e":Ljava/lang/RuntimeException;
    if-eqz p3, :cond_1

    .line 625
    invoke-virtual {v0, p3}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    goto :goto_0

    .line 619
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "msg":Ljava/lang/String;
    :cond_3
    const-string v5, "null"

    goto :goto_1

    .line 621
    :cond_4
    const-string v5, "null"

    goto :goto_2
.end method

.method static deleteFolderContentsFromDatabase(Landroid/content/Context;Lcom/android/launcher4/FolderInfo;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/launcher4/FolderInfo;

    .prologue
    .line 1186
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1188
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/launcher4/LauncherModel$13;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher4/LauncherModel$13;-><init>(Landroid/content/ContentResolver;Lcom/android/launcher4/FolderInfo;)V

    .line 1213
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/launcher4/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1214
    return-void
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/launcher4/ItemInfo;

    .prologue
    .line 1095
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1097
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-wide v4, p1, Lcom/android/launcher4/ItemInfo;->id:J

    const/4 v3, 0x0

    .line 1096
    invoke-static {v4, v5, v3}, Lcom/android/launcher4/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    .line 1099
    .local v2, "uriToDelete":Landroid/net/Uri;
    new-instance v1, Lcom/android/launcher4/LauncherModel$11;

    invoke-direct {v1, v0, v2, p1}, Lcom/android/launcher4/LauncherModel$11;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/android/launcher4/ItemInfo;)V

    .line 1134
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/launcher4/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1135
    return-void
.end method

.method static filterItemInfos(Ljava/util/Collection;Lcom/android/launcher4/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "f"    # Lcom/android/launcher4/LauncherModel$ItemInfoFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/launcher4/ItemInfo;",
            ">;",
            "Lcom/android/launcher4/LauncherModel$ItemInfoFilter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "infos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/launcher4/ItemInfo;>;"
    const/4 v8, 0x0

    .line 3177
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3178
    .local v1, "filtered":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher4/ItemInfo;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3201
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v5

    .line 3178
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/ItemInfo;

    .line 3179
    .local v2, "i":Lcom/android/launcher4/ItemInfo;
    instance-of v6, v2, Lcom/android/launcher4/ShortcutInfo;

    if-eqz v6, :cond_2

    move-object v3, v2

    .line 3180
    check-cast v3, Lcom/android/launcher4/ShortcutInfo;

    .line 3181
    .local v3, "info":Lcom/android/launcher4/ShortcutInfo;
    iget-object v6, v3, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 3182
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-interface {p1, v8, v3, v0}, Lcom/android/launcher4/LauncherModel$ItemInfoFilter;->filterItem(Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3183
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3185
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v3    # "info":Lcom/android/launcher4/ShortcutInfo;
    :cond_2
    instance-of v6, v2, Lcom/android/launcher4/FolderInfo;

    if-eqz v6, :cond_4

    move-object v3, v2

    .line 3186
    check-cast v3, Lcom/android/launcher4/FolderInfo;

    .line 3187
    .local v3, "info":Lcom/android/launcher4/FolderInfo;
    iget-object v6, v3, Lcom/android/launcher4/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/ShortcutInfo;

    .line 3188
    .local v4, "s":Lcom/android/launcher4/ShortcutInfo;
    iget-object v7, v4, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 3189
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_3

    invoke-interface {p1, v3, v4, v0}, Lcom/android/launcher4/LauncherModel$ItemInfoFilter;->filterItem(Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3190
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3193
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v3    # "info":Lcom/android/launcher4/FolderInfo;
    .end local v4    # "s":Lcom/android/launcher4/ShortcutInfo;
    :cond_4
    instance-of v6, v2, Lcom/android/launcher4/LauncherAppWidgetInfo;

    if-eqz v6, :cond_0

    move-object v3, v2

    .line 3194
    check-cast v3, Lcom/android/launcher4/LauncherAppWidgetInfo;

    .line 3195
    .local v3, "info":Lcom/android/launcher4/LauncherAppWidgetInfo;
    iget-object v0, v3, Lcom/android/launcher4/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 3196
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-interface {p1, v8, v3, v0}, Lcom/android/launcher4/LauncherModel$ItemInfoFilter;->filterItem(Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3197
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static findNextAvailableIconSpace(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Landroid/util/Pair;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "launchIntent"    # Landroid/content/Intent;
    .param p3, "firstScreenIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 341
    .local p4, "workspaceScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 342
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getModel()Lcom/android/launcher4/LauncherModel;

    move-result-object v4

    .line 343
    .local v4, "model":Lcom/android/launcher4/LauncherModel;
    const/4 v2, 0x0

    .line 344
    .local v2, "found":Z
    monitor-enter v0

    .line 345
    :try_start_0
    sget-object v7, Lcom/android/launcher4/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v7

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 351
    invoke-virtual {v4}, Lcom/android/launcher4/LauncherModel;->flushWorkerThread()V

    .line 354
    :cond_0
    invoke-static {p0}, Lcom/android/launcher4/LauncherModel;->getItemsInLocalCoordinates(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 361
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 360
    invoke-static {p3, v7}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 362
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 363
    .local v1, "count":I
    move v5, p3

    .local v5, "screen":I
    :goto_0
    if-ge v5, v1, :cond_1

    if-eqz v2, :cond_2

    .line 344
    :cond_1
    monitor-exit v0

    .line 373
    const/4 v7, 0x0

    :goto_1
    return-object v7

    .line 364
    :cond_2
    const/4 v7, 0x2

    new-array v6, v7, [I

    .line 366
    .local v6, "tmpCoordinates":[I
    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 365
    invoke-static {v3, v6, v8, v9}, Lcom/android/launcher4/LauncherModel;->findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[IJ)Z

    move-result v7

    .line 366
    if-eqz v7, :cond_3

    .line 368
    new-instance v8, Landroid/util/Pair;

    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-direct {v8, v7, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    move-object v7, v8

    goto :goto_1

    .line 363
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 344
    .end local v1    # "count":I
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    .end local v5    # "screen":I
    .end local v6    # "tmpCoordinates":[I
    :catchall_0
    move-exception v7

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method static findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[IJ)Z
    .locals 20
    .param p1, "xy"    # [I
    .param p2, "screen"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ItemInfo;",
            ">;[IJ)Z"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v8

    .line 308
    .local v8, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v8}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v11

    .line 309
    .local v11, "grid":Lcom/android/launcher4/DeviceProfile;
    iget v2, v11, Lcom/android/launcher4/DeviceProfile;->numColumns:F

    float-to-int v5, v2

    .line 310
    .local v5, "xCount":I
    iget v2, v11, Lcom/android/launcher4/DeviceProfile;->numRows:F

    float-to-int v6, v2

    .line 311
    .local v6, "yCount":I
    filled-new-array {v5, v6}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    .line 314
    .local v7, "occupied":[[Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v12, v2, :cond_0

    .line 333
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/android/launcher4/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v2

    return v2

    .line 315
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher4/ItemInfo;

    .line 316
    .local v13, "item":Lcom/android/launcher4/ItemInfo;
    iget-wide v2, v13, Lcom/android/launcher4/ItemInfo;->container:J

    const-wide/16 v18, -0x64

    cmp-long v2, v2, v18

    if-nez v2, :cond_1

    .line 317
    iget-wide v2, v13, Lcom/android/launcher4/ItemInfo;->screenId:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_1

    .line 318
    iget v9, v13, Lcom/android/launcher4/ItemInfo;->cellX:I

    .line 319
    .local v9, "cellX":I
    iget v10, v13, Lcom/android/launcher4/ItemInfo;->cellY:I

    .line 320
    .local v10, "cellY":I
    iget v14, v13, Lcom/android/launcher4/ItemInfo;->spanX:I

    .line 321
    .local v14, "spanX":I
    iget v15, v13, Lcom/android/launcher4/ItemInfo;->spanY:I

    .line 322
    .local v15, "spanY":I
    move/from16 v16, v9

    .local v16, "x":I
    :goto_1
    if-ltz v16, :cond_1

    add-int v2, v9, v14

    move/from16 v0, v16

    if-ge v0, v2, :cond_1

    move/from16 v0, v16

    if-lt v0, v5, :cond_2

    .line 314
    .end local v9    # "cellX":I
    .end local v10    # "cellY":I
    .end local v14    # "spanX":I
    .end local v15    # "spanY":I
    .end local v16    # "x":I
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 324
    .restart local v9    # "cellX":I
    .restart local v10    # "cellY":I
    .restart local v14    # "spanX":I
    .restart local v15    # "spanY":I
    .restart local v16    # "x":I
    :cond_2
    move/from16 v17, v10

    .local v17, "y":I
    :goto_2
    if-ltz v17, :cond_3

    add-int v2, v10, v15

    move/from16 v0, v17

    if-ge v0, v2, :cond_3

    move/from16 v0, v17

    if-lt v0, v6, :cond_4

    .line 323
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 326
    :cond_4
    aget-object v2, v7, v16

    const/4 v3, 0x1

    aput-boolean v3, v2, v17

    .line 325
    add-int/lit8 v17, v17, 0x1

    goto :goto_2
.end method

.method private static findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher4/FolderInfo;
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher4/FolderInfo;",
            ">;J)",
            "Lcom/android/launcher4/FolderInfo;"
        }
    .end annotation

    .prologue
    .line 3510
    .local p0, "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher4/FolderInfo;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/FolderInfo;

    .line 3511
    .local v0, "folderInfo":Lcom/android/launcher4/FolderInfo;
    if-nez v0, :cond_0

    .line 3513
    new-instance v0, Lcom/android/launcher4/FolderInfo;

    .end local v0    # "folderInfo":Lcom/android/launcher4/FolderInfo;
    invoke-direct {v0}, Lcom/android/launcher4/FolderInfo;-><init>()V

    .line 3514
    .restart local v0    # "folderInfo":Lcom/android/launcher4/FolderInfo;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3516
    :cond_0
    return-object v0
.end method

.method private forceReload()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1350
    invoke-virtual {p0, v0, v0}, Lcom/android/launcher4/LauncherModel;->resetLoadedState(ZZ)V

    .line 1357
    invoke-virtual {p0}, Lcom/android/launcher4/LauncherModel;->startLoaderFromBackground()V

    .line 1358
    return-void
.end method

.method public static final getAppNameComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3520
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 3521
    .local v0, "collator":Ljava/text/Collator;
    new-instance v1, Lcom/android/launcher4/LauncherModel$16;

    invoke-direct {v1, v0}, Lcom/android/launcher4/LauncherModel$16;-><init>(Ljava/text/Collator;)V

    return-object v1
.end method

.method static getCellLayoutChildId(JJIIII)I
    .locals 2
    .param p0, "container"    # J
    .param p2, "screen"    # J
    .param p4, "localCellX"    # I
    .param p5, "localCellY"    # I
    .param p6, "spanX"    # I
    .param p7, "spanY"    # I

    .prologue
    .line 1084
    long-to-int v0, p0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    long-to-int v1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 1085
    and-int/lit16 v1, p4, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 1084
    or-int/2addr v0, v1

    .line 1085
    and-int/lit16 v1, p5, 0xff

    .line 1084
    or-int/2addr v0, v1

    return v0
.end method

.method static getComponentNameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 3555
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 3556
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 3557
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 3556
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3559
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 3560
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 3559
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getItemInfoForComponentName(Landroid/content/ComponentName;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "cname"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3217
    new-instance v0, Lcom/android/launcher4/LauncherModel$15;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher4/LauncherModel$15;-><init>(Lcom/android/launcher4/LauncherModel;Landroid/content/ComponentName;)V

    .line 3224
    .local v0, "filter":Lcom/android/launcher4/LauncherModel$ItemInfoFilter;
    sget-object v1, Lcom/android/launcher4/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher4/LauncherModel;->filterItemInfos(Ljava/util/Collection;Lcom/android/launcher4/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private getItemInfoForPackageName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "pn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3205
    new-instance v0, Lcom/android/launcher4/LauncherModel$14;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher4/LauncherModel$14;-><init>(Lcom/android/launcher4/LauncherModel;Ljava/lang/String;)V

    .line 3212
    .local v0, "filter":Lcom/android/launcher4/LauncherModel$ItemInfoFilter;
    sget-object v1, Lcom/android/launcher4/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher4/LauncherModel;->filterItemInfos(Ljava/util/Collection;Lcom/android/launcher4/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method static getItemsInLocalCoordinates(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 906
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 907
    .local v15, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 908
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/launcher4/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 909
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "itemType"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 910
    const-string v6, "container"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 911
    const-string v6, "screen"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 912
    const-string v6, "cellX"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 913
    const-string v6, "cellY"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 914
    const-string v6, "spanX"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 915
    const-string v6, "spanY"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 908
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 918
    .local v8, "c":Landroid/database/Cursor;
    const-string v3, "itemType"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 920
    .local v14, "itemTypeIndex":I
    const-string v3, "container"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 922
    .local v11, "containerIndex":I
    const-string v3, "screen"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 924
    .local v16, "screenIndex":I
    const-string v3, "cellX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 926
    .local v9, "cellXIndex":I
    const-string v3, "cellY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 928
    .local v10, "cellYIndex":I
    const-string v3, "spanX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 930
    .local v17, "spanXIndex":I
    const-string v3, "spanY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 933
    .local v18, "spanYIndex":I
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 948
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 951
    :goto_1
    return-object v15

    .line 934
    :cond_0
    :try_start_1
    new-instance v13, Lcom/android/launcher4/ItemInfo;

    invoke-direct {v13}, Lcom/android/launcher4/ItemInfo;-><init>()V

    .line 935
    .local v13, "item":Lcom/android/launcher4/ItemInfo;
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v13, Lcom/android/launcher4/ItemInfo;->cellX:I

    .line 936
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v13, Lcom/android/launcher4/ItemInfo;->cellY:I

    .line 937
    const/4 v3, 0x1

    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v13, Lcom/android/launcher4/ItemInfo;->spanX:I

    .line 938
    const/4 v3, 0x1

    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v13, Lcom/android/launcher4/ItemInfo;->spanY:I

    .line 939
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v13, Lcom/android/launcher4/ItemInfo;->container:J

    .line 940
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v13, Lcom/android/launcher4/ItemInfo;->itemType:I

    .line 941
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v13, Lcom/android/launcher4/ItemInfo;->screenId:J

    .line 943
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 945
    .end local v13    # "item":Lcom/android/launcher4/ItemInfo;
    :catch_0
    move-exception v12

    .line 946
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 948
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 947
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 948
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 949
    throw v3
.end method

.method private getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher4/ShortcutInfo;
    .locals 11
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "iconTypeIndex"    # I
    .param p4, "iconPackageIndex"    # I
    .param p5, "iconResourceIndex"    # I
    .param p6, "iconIndex"    # I
    .param p7, "titleIndex"    # I

    .prologue
    .line 3251
    const/4 v1, 0x0

    .line 3252
    .local v1, "icon":Landroid/graphics/Bitmap;
    new-instance v4, Lcom/android/launcher4/ShortcutInfo;

    invoke-direct {v4}, Lcom/android/launcher4/ShortcutInfo;-><init>()V

    .line 3253
    .local v4, "info":Lcom/android/launcher4/ShortcutInfo;
    const/4 v9, 0x1

    iput v9, v4, Lcom/android/launcher4/ShortcutInfo;->itemType:I

    .line 3258
    move/from16 v0, p7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/android/launcher4/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 3260
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 3261
    .local v2, "iconType":I
    packed-switch v2, :pswitch_data_0

    .line 3301
    invoke-virtual {p0}, Lcom/android/launcher4/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3302
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/android/launcher4/ShortcutInfo;->usingFallbackIcon:Z

    .line 3303
    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/android/launcher4/ShortcutInfo;->customIcon:Z

    .line 3306
    :cond_0
    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/launcher4/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 3307
    return-object v4

    .line 3263
    :pswitch_0
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3264
    .local v6, "packageName":Ljava/lang/String;
    move/from16 v0, p5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3265
    .local v7, "resourceName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 3266
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/android/launcher4/ShortcutInfo;->customIcon:Z

    .line 3270
    :try_start_0
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 3271
    .local v8, "resources":Landroid/content/res/Resources;
    if-eqz v8, :cond_1

    .line 3272
    const/4 v9, 0x0

    .line 3273
    const/4 v10, 0x0

    .line 3272
    invoke-virtual {v8, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3275
    .local v3, "id":I
    iget-object v9, p0, Lcom/android/launcher4/LauncherModel;->mIconCache:Lcom/android/launcher4/IconCache;

    invoke-virtual {v9, v8, v3}, Lcom/android/launcher4/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 3274
    invoke-static {v9, p2}, Lcom/android/launcher4/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3281
    .end local v3    # "id":I
    .end local v8    # "resources":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 3282
    move/from16 v0, p6

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher4/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3285
    :cond_2
    if-nez v1, :cond_0

    .line 3286
    invoke-virtual {p0}, Lcom/android/launcher4/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3287
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/android/launcher4/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_0

    .line 3291
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "resourceName":Ljava/lang/String;
    :pswitch_1
    move/from16 v0, p6

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher4/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3292
    if-nez v1, :cond_3

    .line 3293
    invoke-virtual {p0}, Lcom/android/launcher4/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3294
    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/android/launcher4/ShortcutInfo;->customIcon:Z

    .line 3295
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/android/launcher4/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_0

    .line 3297
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/android/launcher4/ShortcutInfo;->customIcon:Z

    goto :goto_0

    .line 3277
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "resourceName":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_1

    .line 3261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSortedWidgetsAndShortcuts(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3033
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3034
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3035
    .local v2, "widgetsAndShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 3036
    invoke-virtual {v3}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v3

    .line 3035
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3037
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3039
    .local v1, "shortcutsIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 3038
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3041
    new-instance v3, Lcom/android/launcher4/LauncherModel$WidgetAndShortcutNameComparator;

    invoke-direct {v3, v0}, Lcom/android/launcher4/LauncherModel$WidgetAndShortcutNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 3040
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3043
    return-object v2
.end method

.method public static final getWidgetNameComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3544
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 3545
    .local v0, "collator":Ljava/text/Collator;
    new-instance v1, Lcom/android/launcher4/LauncherModel$17;

    invoke-direct {v1, v0}, Lcom/android/launcher4/LauncherModel$17;-><init>(Ljava/text/Collator;)V

    return-object v1
.end method

.method public static isShortcutInfoUpdateable(Lcom/android/launcher4/ItemInfo;)Z
    .locals 5
    .param p0, "i"    # Lcom/android/launcher4/ItemInfo;

    .prologue
    .line 3228
    instance-of v3, p0, Lcom/android/launcher4/ShortcutInfo;

    if-eqz v3, :cond_0

    move-object v0, p0

    .line 3229
    check-cast v0, Lcom/android/launcher4/ShortcutInfo;

    .line 3233
    .local v0, "info":Lcom/android/launcher4/ShortcutInfo;
    iget-object v1, v0, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3234
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 3235
    .local v2, "name":Landroid/content/ComponentName;
    iget v3, v0, Lcom/android/launcher4/ShortcutInfo;->itemType:I

    if-nez v3, :cond_0

    .line 3236
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3237
    if-eqz v2, :cond_0

    .line 3238
    const/4 v3, 0x1

    .line 3241
    .end local v0    # "info":Lcom/android/launcher4/ShortcutInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "name":Landroid/content/ComponentName;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isValidPackageComponent(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 3047
    if-nez p2, :cond_1

    .line 3061
    :cond_0
    :goto_0
    return v2

    .line 3053
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 3054
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_0

    .line 3059
    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 3060
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 3061
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private static loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/TreeMap;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1459
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1460
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher4/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    .local v1, "screensUri":Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 1461
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1463
    .local v11, "sc":Landroid/database/Cursor;
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 1467
    .local v8, "orderedScreens":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :try_start_0
    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1469
    .local v7, "idIndex":I
    const-string v2, "screenRank"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1470
    .local v10, "rankIndex":I
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 1482
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1484
    return-object v8

    .line 1472
    :cond_0
    :try_start_1
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1473
    .local v12, "screenId":J
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1474
    .local v9, "rank":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1475
    .end local v9    # "rank":I
    .end local v12    # "screenId":J
    :catch_0
    move-exception v6

    .line 1476
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "Launcher.Model"

    .line 1477
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Desktop items loading interrupted - invalid screens: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1478
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1477
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1478
    const/4 v4, 0x1

    .line 1476
    invoke-static {v2, v3, v4}, Lcom/android/launcher4/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1481
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "idIndex":I
    .end local v10    # "rankIndex":I
    :catchall_0
    move-exception v2

    .line 1482
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1483
    throw v2
.end method

.method static modifyItemInDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;JJIIII)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/launcher4/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I
    .param p8, "spanX"    # I
    .param p9, "spanY"    # I

    .prologue
    .line 843
    iput-wide p2, p1, Lcom/android/launcher4/ItemInfo;->container:J

    .line 844
    iput p6, p1, Lcom/android/launcher4/ItemInfo;->cellX:I

    .line 845
    iput p7, p1, Lcom/android/launcher4/ItemInfo;->cellY:I

    .line 846
    iput p8, p1, Lcom/android/launcher4/ItemInfo;->spanX:I

    .line 847
    iput p9, p1, Lcom/android/launcher4/ItemInfo;->spanY:I

    .line 852
    instance-of v1, p0, Lcom/android/launcher4/Launcher;

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-gez v1, :cond_0

    .line 853
    const-wide/16 v2, -0x65

    cmp-long v1, p2, v2

    if-eqz v1, :cond_1

    .line 857
    :cond_0
    iput-wide p4, p1, Lcom/android/launcher4/ItemInfo;->screenId:J

    .line 860
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 861
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "container"

    iget-wide v2, p1, Lcom/android/launcher4/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 862
    const-string v1, "cellX"

    iget v2, p1, Lcom/android/launcher4/ItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 863
    const-string v1, "cellY"

    iget v2, p1, Lcom/android/launcher4/ItemInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 864
    const-string v1, "spanX"

    iget v2, p1, Lcom/android/launcher4/ItemInfo;->spanX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 865
    const-string v1, "spanY"

    iget v2, p1, Lcom/android/launcher4/ItemInfo;->spanY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 866
    const-string v1, "screen"

    iget-wide v2, p1, Lcom/android/launcher4/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 869
    const-string v1, "modifyItemInDatabase"

    .line 868
    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher4/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher4/ItemInfo;Ljava/lang/String;)V

    .line 870
    return-void
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;JJII)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/launcher4/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I

    .prologue
    .line 773
    iput-wide p2, p1, Lcom/android/launcher4/ItemInfo;->container:J

    .line 774
    iput p6, p1, Lcom/android/launcher4/ItemInfo;->cellX:I

    .line 775
    iput p7, p1, Lcom/android/launcher4/ItemInfo;->cellY:I

    .line 780
    instance-of v1, p0, Lcom/android/launcher4/Launcher;

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-gez v1, :cond_0

    .line 781
    const-wide/16 v2, -0x65

    cmp-long v1, p2, v2

    if-eqz v1, :cond_1

    .line 785
    :cond_0
    iput-wide p4, p1, Lcom/android/launcher4/ItemInfo;->screenId:J

    .line 788
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 789
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "container"

    iget-wide v2, p1, Lcom/android/launcher4/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 790
    const-string v1, "cellX"

    iget v2, p1, Lcom/android/launcher4/ItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 791
    const-string v1, "cellY"

    iget v2, p1, Lcom/android/launcher4/ItemInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 792
    const-string v1, "screen"

    iget-wide v2, p1, Lcom/android/launcher4/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 794
    const-string v1, "moveItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher4/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher4/ItemInfo;Ljava/lang/String;)V

    .line 795
    return-void
.end method

.method static moveItemsInDatabase(Landroid/content/Context;Ljava/util/ArrayList;JI)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ItemInfo;",
            ">;JI)V"
        }
    .end annotation

    .prologue
    .line 805
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 806
    .local v0, "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 808
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 833
    const-string v5, "moveItemInDatabase"

    .line 832
    invoke-static {p0, v0, p1, v5}, Lcom/android/launcher4/LauncherModel;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 834
    return-void

    .line 809
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher4/ItemInfo;

    .line 810
    .local v3, "item":Lcom/android/launcher4/ItemInfo;
    iput-wide p2, v3, Lcom/android/launcher4/ItemInfo;->container:J

    .line 815
    instance-of v5, p0, Lcom/android/launcher4/Launcher;

    if-eqz v5, :cond_1

    .line 816
    if-gez p4, :cond_1

    .line 817
    const-wide/16 v6, -0x65

    cmp-long v5, p2, v6

    if-eqz v5, :cond_2

    .line 821
    :cond_1
    int-to-long v6, p4

    iput-wide v6, v3, Lcom/android/launcher4/ItemInfo;->screenId:J

    .line 824
    :cond_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 825
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "container"

    iget-wide v6, v3, Lcom/android/launcher4/ItemInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 826
    const-string v5, "cellX"

    iget v6, v3, Lcom/android/launcher4/ItemInfo;->cellX:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 827
    const-string v5, "cellY"

    iget v6, v3, Lcom/android/launcher4/ItemInfo;->cellY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 828
    const-string v5, "screen"

    iget-wide v6, v3, Lcom/android/launcher4/ItemInfo;->screenId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 830
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private runOnMainThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher4/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;I)V

    .line 280
    return-void
.end method

.method private runOnMainThread(Ljava/lang/Runnable;I)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "type"    # I

    .prologue
    .line 283
    sget-object v0, Lcom/android/launcher4/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel;->mHandler:Lcom/android/launcher4/DeferredHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 296
    sget-object v0, Lcom/android/launcher4/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 297
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    sget-object v0, Lcom/android/launcher4/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 888
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 889
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher4/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 890
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v5

    const-string v3, "intent"

    aput-object v3, v2, v8

    const-string v3, "title=? and intent=?"

    .line 891
    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    .line 889
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 892
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 894
    .local v7, "result":Z
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 896
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 898
    return v7

    .line 895
    :catchall_0
    move-exception v1

    .line 896
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 897
    throw v1
.end method

.method private stopLoaderLocked()Z
    .locals 3

    .prologue
    .line 1399
    const/4 v0, 0x0

    .line 1400
    .local v0, "isLaunching":Z
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel;->mLoaderTask:Lcom/android/launcher4/LauncherModel$LoaderTask;

    .line 1401
    .local v1, "oldTask":Lcom/android/launcher4/LauncherModel$LoaderTask;
    if-eqz v1, :cond_1

    .line 1402
    invoke-virtual {v1}, Lcom/android/launcher4/LauncherModel$LoaderTask;->isLaunching()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1403
    const/4 v0, 0x1

    .line 1405
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher4/LauncherModel$LoaderTask;->stopLocked()V

    .line 1407
    :cond_1
    return v0
.end method

.method static updateItemArrays(Lcom/android/launcher4/ItemInfo;J[Ljava/lang/StackTraceElement;)V
    .locals 11
    .param p0, "item"    # Lcom/android/launcher4/ItemInfo;
    .param p1, "itemId"    # J
    .param p3, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .prologue
    const-wide/16 v8, -0x64

    const-wide/16 v6, -0x65

    .line 697
    sget-object v3, Lcom/android/launcher4/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 698
    :try_start_0
    invoke-static {p1, p2, p0, p3}, Lcom/android/launcher4/LauncherModel;->checkItemInfoLocked(JLcom/android/launcher4/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 700
    iget-wide v4, p0, Lcom/android/launcher4/ItemInfo;->container:J

    cmp-long v2, v4, v8

    if-eqz v2, :cond_0

    .line 701
    iget-wide v4, p0, Lcom/android/launcher4/ItemInfo;->container:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    .line 703
    sget-object v2, Lcom/android/launcher4/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    iget-wide v4, p0, Lcom/android/launcher4/ItemInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 707
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "item: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " container being set to: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 708
    iget-wide v4, p0, Lcom/android/launcher4/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", not in the list of folders"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 707
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 709
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "Launcher.Model"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/android/launcher4/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/ItemInfo;

    .line 719
    .local v0, "modelItem":Lcom/android/launcher4/ItemInfo;
    iget-wide v4, v0, Lcom/android/launcher4/ItemInfo;->container:J

    cmp-long v2, v4, v8

    if-eqz v2, :cond_1

    .line 720
    iget-wide v4, v0, Lcom/android/launcher4/ItemInfo;->container:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_3

    .line 721
    :cond_1
    iget v2, v0, Lcom/android/launcher4/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 697
    :cond_2
    :goto_0
    monitor-exit v3

    .line 736
    return-void

    .line 725
    :pswitch_0
    sget-object v2, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 726
    sget-object v2, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 697
    .end local v0    # "modelItem":Lcom/android/launcher4/ItemInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 733
    .restart local v0    # "modelItem":Lcom/android/launcher4/ItemInfo;
    :cond_3
    :try_start_1
    sget-object v2, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 721
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/launcher4/ItemInfo;

    .prologue
    .line 876
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 877
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p1, v0}, Lcom/android/launcher4/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 878
    iget v1, p1, Lcom/android/launcher4/ItemInfo;->cellX:I

    iget v2, p1, Lcom/android/launcher4/ItemInfo;->cellY:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/launcher4/ItemInfo;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    .line 880
    const-string v1, "updateItemInDatabase"

    .line 879
    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher4/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher4/ItemInfo;Ljava/lang/String;)V

    .line 881
    return-void
.end method

.method static updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher4/ItemInfo;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "item"    # Lcom/android/launcher4/ItemInfo;
    .param p3, "callingFunction"    # Ljava/lang/String;

    .prologue
    .line 648
    iget-wide v6, p2, Lcom/android/launcher4/ItemInfo;->id:J

    .line 649
    .local v6, "itemId":J
    const/4 v0, 0x0

    invoke-static {v6, v7, v0}, Lcom/android/launcher4/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v3

    .line 650
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 652
    .local v2, "cr":Landroid/content/ContentResolver;
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    .line 653
    .local v8, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v1, Lcom/android/launcher4/LauncherModel$7;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher4/LauncherModel$7;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/android/launcher4/ItemInfo;J[Ljava/lang/StackTraceElement;)V

    .line 659
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/launcher4/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 660
    return-void
.end method

.method static updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p3, "callingFunction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 665
    .local p1, "valuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 667
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 668
    .local v2, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v1, Lcom/android/launcher4/LauncherModel$8;

    invoke-direct {v1, p2, p1, v2, v0}, Lcom/android/launcher4/LauncherModel$8;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/StackTraceElement;Landroid/content/ContentResolver;)V

    .line 691
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/launcher4/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 692
    return-void
.end method


# virtual methods
.method public addAndBindAddedApps(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callbacks"    # Lcom/android/launcher4/LauncherModel$Callbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ItemInfo;",
            ">;",
            "Lcom/android/launcher4/LauncherModel$Callbacks;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p2, "workspaceApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    .local p4, "allAppsApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    :goto_0
    return-void

    .line 392
    :cond_0
    new-instance v0, Lcom/android/launcher4/LauncherModel$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher4/LauncherModel$4;-><init>(Lcom/android/launcher4/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher4/LauncherModel$Callbacks;)V

    .line 523
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher4/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public addAndBindAddedApps(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p2, "workspaceApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    .local p3, "allAppsApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher4/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/LauncherModel$Callbacks;

    move-object v0, v1

    .line 380
    .local v0, "cb":Lcom/android/launcher4/LauncherModel$Callbacks;
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/launcher4/LauncherModel;->addAndBindAddedApps(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    .line 381
    return-void

    .line 379
    .end local v0    # "cb":Lcom/android/launcher4/LauncherModel$Callbacks;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/android/launcher4/ShortcutInfo;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "container"    # J
    .param p5, "screen"    # I
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I
    .param p8, "notify"    # Z

    .prologue
    .line 3332
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher4/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher4/ShortcutInfo;

    move-result-object v1

    .line 3333
    .local v1, "info":Lcom/android/launcher4/ShortcutInfo;
    if-nez v1, :cond_0

    .line 3334
    const/4 v1, 0x0

    .line 3339
    .end local v1    # "info":Lcom/android/launcher4/ShortcutInfo;
    :goto_0
    return-object v1

    .line 3336
    .restart local v1    # "info":Lcom/android/launcher4/ShortcutInfo;
    :cond_0
    int-to-long v4, p5

    move-object v0, p1

    move-wide v2, p3

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/android/launcher4/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;JJIIZ)V

    goto :goto_0
.end method

.method bindRemainingSynchronousPages()V
    .locals 4

    .prologue
    .line 1441
    sget-object v1, Lcom/android/launcher4/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1442
    sget-object v1, Lcom/android/launcher4/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1445
    sget-object v1, Lcom/android/launcher4/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1447
    :cond_0
    return-void

    .line 1442
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1443
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/launcher4/LauncherModel;->mHandler:Lcom/android/launcher4/DeferredHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher4/DeferredHandler;->post(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 3642
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCallbacks="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher4/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3643
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.data"

    .line 3644
    sget-object v2, Lcom/android/launcher4/AllAppsList;->data:Ljava/util/ArrayList;

    .line 3643
    invoke-static {v0, v1, v2}, Lcom/android/launcher4/AppInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3645
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.added"

    .line 3646
    iget-object v2, p0, Lcom/android/launcher4/LauncherModel;->mBgAllAppsList:Lcom/android/launcher4/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher4/AllAppsList;->added:Ljava/util/ArrayList;

    .line 3645
    invoke-static {v0, v1, v2}, Lcom/android/launcher4/AppInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3647
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.removed"

    .line 3648
    iget-object v2, p0, Lcom/android/launcher4/LauncherModel;->mBgAllAppsList:Lcom/android/launcher4/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher4/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 3647
    invoke-static {v0, v1, v2}, Lcom/android/launcher4/AppInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3649
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.modified"

    .line 3650
    iget-object v2, p0, Lcom/android/launcher4/LauncherModel;->mBgAllAppsList:Lcom/android/launcher4/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher4/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 3649
    invoke-static {v0, v1, v2}, Lcom/android/launcher4/AppInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3651
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel;->mLoaderTask:Lcom/android/launcher4/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 3652
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel;->mLoaderTask:Lcom/android/launcher4/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherModel$LoaderTask;->dumpState()V

    .line 3656
    :goto_0
    return-void

    .line 3654
    :cond_0
    const-string v0, "Launcher.Model"

    const-string v1, "mLoaderTask=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method enqueuePackageUpdated(Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;)V
    .locals 1
    .param p1, "task"    # Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;

    .prologue
    .line 2849
    sget-object v0, Lcom/android/launcher4/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2850
    return-void
.end method

.method findAppWidgetProviderInfoWithComponent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 3349
    .line 3348
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 3349
    invoke-virtual {v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v1

    .line 3350
    .local v1, "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3355
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3350
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 3351
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public flushWorkerThread()V
    .locals 4

    .prologue
    .line 739
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher4/LauncherModel;->mFlushingWorkerThread:Z

    .line 740
    new-instance v1, Lcom/android/launcher4/LauncherModel$9;

    invoke-direct {v1, p0}, Lcom/android/launcher4/LauncherModel$9;-><init>(Lcom/android/launcher4/LauncherModel;)V

    .line 749
    .local v1, "waiter":Ljava/lang/Runnable;
    monitor-enter v1

    .line 750
    :try_start_0
    invoke-static {v1}, Lcom/android/launcher4/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 751
    iget-object v2, p0, Lcom/android/launcher4/LauncherModel;->mLoaderTask:Lcom/android/launcher4/LauncherModel$LoaderTask;

    if-eqz v2, :cond_0

    .line 752
    iget-object v3, p0, Lcom/android/launcher4/LauncherModel;->mLoaderTask:Lcom/android/launcher4/LauncherModel$LoaderTask;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 753
    :try_start_1
    iget-object v2, p0, Lcom/android/launcher4/LauncherModel;->mLoaderTask:Lcom/android/launcher4/LauncherModel$LoaderTask;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 752
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 756
    :cond_0
    const/4 v0, 0x0

    .line 757
    .local v0, "success":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 749
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 765
    return-void

    .line 752
    .end local v0    # "success":Z
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 749
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 759
    .restart local v0    # "success":Z
    :cond_1
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 760
    const/4 v0, 0x1

    goto :goto_0

    .line 761
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getFallbackIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel;->mDefaultIcon:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher4/FolderInfo;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher4/FolderInfo;",
            ">;J)",
            "Lcom/android/launcher4/FolderInfo;"
        }
    .end annotation

    .prologue
    .line 960
    .local p2, "folderList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher4/FolderInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 962
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/launcher4/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 963
    const/4 v4, 0x0

    .line 964
    const-string v5, "_id=? and (itemType=? or itemType=?)"

    .line 965
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 966
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x1

    .line 967
    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    .line 968
    const/4 v7, 0x0

    .line 962
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 971
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 973
    const-string v3, "itemType"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 975
    .local v13, "itemTypeIndex":I
    const-string v3, "title"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 977
    .local v15, "titleIndex":I
    const-string v3, "container"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 979
    .local v11, "containerIndex":I
    const-string v3, "screen"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 981
    .local v14, "screenIndex":I
    const-string v3, "cellX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 983
    .local v9, "cellXIndex":I
    const-string v3, "cellY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 985
    .local v10, "cellYIndex":I
    const/4 v12, 0x0

    .line 986
    .local v12, "folderInfo":Lcom/android/launcher4/FolderInfo;
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 992
    :goto_0
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/android/launcher4/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 993
    move-wide/from16 v0, p3

    iput-wide v0, v12, Lcom/android/launcher4/FolderInfo;->id:J

    .line 994
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v12, Lcom/android/launcher4/FolderInfo;->container:J

    .line 995
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v12, Lcom/android/launcher4/FolderInfo;->screenId:J

    .line 996
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher4/FolderInfo;->cellX:I

    .line 997
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher4/FolderInfo;->cellY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1005
    .end local v9    # "cellXIndex":I
    .end local v10    # "cellYIndex":I
    .end local v11    # "containerIndex":I
    .end local v12    # "folderInfo":Lcom/android/launcher4/FolderInfo;
    .end local v13    # "itemTypeIndex":I
    .end local v14    # "screenIndex":I
    .end local v15    # "titleIndex":I
    :goto_1
    return-object v12

    .line 988
    .restart local v9    # "cellXIndex":I
    .restart local v10    # "cellYIndex":I
    .restart local v11    # "containerIndex":I
    .restart local v12    # "folderInfo":Lcom/android/launcher4/FolderInfo;
    .restart local v13    # "itemTypeIndex":I
    .restart local v14    # "screenIndex":I
    .restart local v15    # "titleIndex":I
    :pswitch_0
    :try_start_1
    invoke-static/range {p2 .. p4}, Lcom/android/launcher4/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher4/FolderInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    goto :goto_0

    .line 1001
    .end local v9    # "cellXIndex":I
    .end local v10    # "cellYIndex":I
    .end local v11    # "containerIndex":I
    .end local v12    # "folderInfo":Lcom/android/launcher4/FolderInfo;
    .end local v13    # "itemTypeIndex":I
    .end local v14    # "screenIndex":I
    .end local v15    # "titleIndex":I
    :catchall_0
    move-exception v3

    .line 1002
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1003
    throw v3

    .line 1002
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1005
    const/4 v12, 0x0

    goto :goto_1

    .line 986
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "iconIndex"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 3313
    const/4 v1, 0x0

    .line 3320
    .local v1, "debug":Z
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 3323
    .local v0, "data":[B
    const/4 v3, 0x0

    :try_start_0
    array-length v4, v0

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3322
    invoke-static {v3, p3}, Lcom/android/launcher4/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3326
    :goto_0
    return-object v3

    .line 3325
    :catch_0
    move-exception v2

    .line 3326
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher4/ShortcutInfo;
    .locals 8
    .param p1, "manager"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 3071
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher4/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;)Lcom/android/launcher4/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;)Lcom/android/launcher4/ShortcutInfo;
    .locals 19
    .param p1, "manager"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "iconIndex"    # I
    .param p6, "titleIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/android/launcher4/ShortcutInfo;"
        }
    .end annotation

    .prologue
    .line 3083
    .local p7, "labelCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/CharSequence;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 3084
    .local v5, "componentName":Landroid/content/ComponentName;
    new-instance v9, Lcom/android/launcher4/ShortcutInfo;

    invoke-direct {v9}, Lcom/android/launcher4/ShortcutInfo;-><init>()V

    .line 3085
    .local v9, "info":Lcom/android/launcher4/ShortcutInfo;
    if-eqz v5, :cond_0

    .line 3086
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/launcher4/LauncherModel;->isValidPackageComponent(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 3087
    const-string v16, "Launcher.Model"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Invalid package found in getShortcutInfo: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3088
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 3087
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    const/4 v9, 0x0

    .line 3172
    .end local v9    # "info":Lcom/android/launcher4/ShortcutInfo;
    :goto_0
    return-object v9

    .line 3093
    .restart local v9    # "info":Lcom/android/launcher4/ShortcutInfo;
    :cond_0
    :try_start_0
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    .line 3092
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 3094
    .local v14, "pi":Landroid/content/pm/PackageInfo;
    invoke-virtual {v9, v14}, Lcom/android/launcher4/ShortcutInfo;->initFlagsAndFirstInstallTime(Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3115
    .end local v14    # "pi":Landroid/content/pm/PackageInfo;
    :goto_1
    const/4 v8, 0x0

    .line 3116
    .local v8, "icon":Landroid/graphics/Bitmap;
    const/4 v15, 0x0

    .line 3117
    .local v15, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    .line 3118
    .local v13, "oldComponent":Landroid/content/ComponentName;
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3119
    .local v12, "newIntent":Landroid/content/Intent;
    const-string v16, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3120
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3121
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v12, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 3122
    .local v10, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_9

    .line 3129
    if-nez v15, :cond_2

    .line 3130
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 3132
    :cond_2
    if-eqz v15, :cond_3

    .line 3133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/LauncherModel;->mIconCache:Lcom/android/launcher4/IconCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p7

    invoke-virtual {v0, v5, v15, v1}, Lcom/android/launcher4/IconCache;->getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 3136
    :cond_3
    if-nez v8, :cond_4

    .line 3137
    if-eqz p4, :cond_4

    .line 3138
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher4/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 3142
    :cond_4
    if-nez v8, :cond_5

    .line 3143
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 3144
    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v9, Lcom/android/launcher4/ShortcutInfo;->usingFallbackIcon:Z

    .line 3146
    :cond_5
    invoke-virtual {v9, v8}, Lcom/android/launcher4/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 3149
    if-eqz v15, :cond_6

    .line 3151
    invoke-static {v15}, Lcom/android/launcher4/LauncherModel;->getComponentNameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v11

    .line 3152
    .local v11, "key":Landroid/content/ComponentName;
    if-eqz p7, :cond_a

    move-object/from16 v0, p7

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 3153
    move-object/from16 v0, p7

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/CharSequence;

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/android/launcher4/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 3162
    .end local v11    # "key":Landroid/content/ComponentName;
    :cond_6
    :goto_3
    iget-object v0, v9, Lcom/android/launcher4/ShortcutInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    if-nez v16, :cond_7

    .line 3163
    if-eqz p4, :cond_7

    .line 3164
    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/android/launcher4/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 3168
    :cond_7
    iget-object v0, v9, Lcom/android/launcher4/ShortcutInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    if-nez v16, :cond_8

    .line 3169
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/android/launcher4/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 3171
    :cond_8
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v9, Lcom/android/launcher4/ShortcutInfo;->itemType:I

    goto/16 :goto_0

    .line 3095
    .end local v8    # "icon":Landroid/graphics/Bitmap;
    .end local v10    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12    # "newIntent":Landroid/content/Intent;
    .end local v13    # "oldComponent":Landroid/content/ComponentName;
    .end local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v6

    .line 3096
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v16, "Launcher.Model"

    .line 3097
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "getPackInfo failed for package "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3098
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 3097
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 3096
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3122
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "icon":Landroid/graphics/Bitmap;
    .restart local v10    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v12    # "newIntent":Landroid/content/Intent;
    .restart local v13    # "oldComponent":Landroid/content/ComponentName;
    .restart local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 3123
    .local v7, "i":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 3124
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3123
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3125
    .local v4, "cn":Landroid/content/ComponentName;
    invoke-virtual {v4, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 3126
    move-object v15, v7

    goto/16 :goto_2

    .line 3155
    .end local v4    # "cn":Landroid/content/ComponentName;
    .end local v7    # "i":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "key":Landroid/content/ComponentName;
    :cond_a
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/android/launcher4/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 3156
    if-eqz p7, :cond_6

    .line 3157
    iget-object v0, v9, Lcom/android/launcher4/ShortcutInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3
.end method

.method infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher4/ShortcutInfo;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "fallbackIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3403
    const-string v13, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 3404
    .local v9, "intent":Landroid/content/Intent;
    const-string v13, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3405
    .local v10, "name":Ljava/lang/String;
    const-string v13, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 3407
    .local v1, "bitmap":Landroid/os/Parcelable;
    if-nez v9, :cond_0

    .line 3410
    const-string v13, "Launcher.Model"

    const-string v14, "Can\'t construct ShorcutInfo with null intent"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    const/4 v8, 0x0

    .line 3459
    .end local v1    # "bitmap":Landroid/os/Parcelable;
    :goto_0
    return-object v8

    .line 3414
    .restart local v1    # "bitmap":Landroid/os/Parcelable;
    :cond_0
    const/4 v5, 0x0

    .line 3415
    .local v5, "icon":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 3416
    .local v2, "customIcon":Z
    const/4 v6, 0x0

    .line 3418
    .local v6, "iconResource":Landroid/content/Intent$ShortcutIconResource;
    if-eqz v1, :cond_3

    instance-of v13, v1, Landroid/graphics/Bitmap;

    if-eqz v13, :cond_3

    .line 3419
    new-instance v13, Lcom/android/launcher4/FastBitmapDrawable;

    .line 3420
    check-cast v1, Landroid/graphics/Bitmap;

    .line 3419
    .end local v1    # "bitmap":Landroid/os/Parcelable;
    invoke-direct {v13, v1}, Lcom/android/launcher4/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/android/launcher4/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3421
    const/4 v2, 0x1

    .line 3442
    :cond_1
    :goto_1
    new-instance v8, Lcom/android/launcher4/ShortcutInfo;

    invoke-direct {v8}, Lcom/android/launcher4/ShortcutInfo;-><init>()V

    .line 3444
    .local v8, "info":Lcom/android/launcher4/ShortcutInfo;
    if-nez v5, :cond_2

    .line 3445
    if-eqz p3, :cond_4

    .line 3446
    move-object/from16 v5, p3

    .line 3452
    :cond_2
    :goto_2
    invoke-virtual {v8, v5}, Lcom/android/launcher4/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 3454
    iput-object v10, v8, Lcom/android/launcher4/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 3455
    iput-object v9, v8, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3456
    iput-boolean v2, v8, Lcom/android/launcher4/ShortcutInfo;->customIcon:Z

    .line 3457
    iput-object v6, v8, Lcom/android/launcher4/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    goto :goto_0

    .line 3424
    .end local v8    # "info":Lcom/android/launcher4/ShortcutInfo;
    .restart local v1    # "bitmap":Landroid/os/Parcelable;
    :cond_3
    const-string v13, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 3425
    .local v4, "extra":Landroid/os/Parcelable;
    if-eqz v4, :cond_1

    instance-of v13, v4, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v13, :cond_1

    .line 3427
    :try_start_0
    move-object v0, v4

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v6, v0

    .line 3429
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 3431
    .local v11, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v13, v6, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    .line 3433
    .local v12, "resources":Landroid/content/res/Resources;
    iget-object v13, v6, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 3432
    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 3435
    .local v7, "id":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher4/LauncherModel;->mIconCache:Lcom/android/launcher4/IconCache;

    invoke-virtual {v13, v12, v7}, Lcom/android/launcher4/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 3434
    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/android/launcher4/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 3436
    .end local v7    # "id":I
    .end local v11    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v12    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    .line 3437
    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "Launcher.Model"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Could not load shortcut icon: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3448
    .end local v1    # "bitmap":Landroid/os/Parcelable;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "extra":Landroid/os/Parcelable;
    .restart local v8    # "info":Lcom/android/launcher4/ShortcutInfo;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3449
    const/4 v13, 0x1

    iput-boolean v13, v8, Lcom/android/launcher4/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_2
.end method

.method public initialize(Lcom/android/launcher4/LauncherModel$Callbacks;)V
    .locals 2
    .param p1, "callbacks"    # Lcom/android/launcher4/LauncherModel$Callbacks;

    .prologue
    .line 1220
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1221
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher4/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 1220
    monitor-exit v1

    .line 1223
    return-void

    .line 1220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAllAppsLoaded()Z
    .locals 1

    .prologue
    .line 1488
    iget-boolean v0, p0, Lcom/android/launcher4/LauncherModel;->mAllAppsLoaded:Z

    return v0
.end method

.method isLoadingWorkspace()Z
    .locals 2

    .prologue
    .line 1492
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1493
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel;->mLoaderTask:Lcom/android/launcher4/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel;->mLoaderTask:Lcom/android/launcher4/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherModel$LoaderTask;->isLoadingWorkspace()Z

    move-result v0

    monitor-exit v1

    .line 1497
    :goto_0
    return v0

    .line 1492
    :cond_0
    monitor-exit v1

    .line 1497
    const/4 v0, 0x0

    goto :goto_0

    .line 1492
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1235
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1237
    .local v2, "action":Ljava/lang/String;
    const-string v12, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1238
    const-string v12, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1239
    const-string v12, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1240
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    .line 1242
    .local v7, "packageName":Ljava/lang/String;
    const-string v12, "android.intent.extra.REPLACING"

    const/4 v13, 0x0

    .line 1241
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 1244
    .local v9, "replacing":Z
    const/4 v6, 0x0

    .line 1246
    .local v6, "op":I
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_2

    .line 1347
    .end local v6    # "op":I
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "replacing":Z
    :cond_1
    :goto_0
    return-void

    .line 1251
    .restart local v6    # "op":I
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v9    # "replacing":Z
    :cond_2
    const-string v12, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1252
    const/4 v6, 0x2

    .line 1268
    :cond_3
    :goto_1
    if-eqz v6, :cond_1

    .line 1269
    new-instance v12, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;

    .line 1270
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v6, v13}, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher4/LauncherModel;I[Ljava/lang/String;)V

    .line 1269
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher4/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    .line 1253
    :cond_4
    const-string v12, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1254
    if-nez v9, :cond_3

    .line 1255
    const/4 v6, 0x3

    .line 1260
    goto :goto_1

    :cond_5
    const-string v12, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1261
    if-nez v9, :cond_6

    .line 1262
    const/4 v6, 0x1

    .line 1263
    goto :goto_1

    .line 1264
    :cond_6
    const/4 v6, 0x2

    goto :goto_1

    .line 1273
    .end local v6    # "op":I
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "replacing":Z
    :cond_7
    const-string v12, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1276
    const-string v12, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1277
    .local v8, "packages":[Ljava/lang/String;
    new-instance v12, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;

    .line 1278
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13, v8}, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher4/LauncherModel;I[Ljava/lang/String;)V

    .line 1277
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher4/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;)V

    .line 1280
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/LauncherModel;->startLoaderFromBackground()V

    goto :goto_0

    .line 1281
    .end local v8    # "packages":[Ljava/lang/String;
    :cond_8
    const-string v12, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 1282
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1284
    const-string v12, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1285
    .restart local v8    # "packages":[Ljava/lang/String;
    new-instance v12, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;

    .line 1286
    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13, v8}, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher4/LauncherModel;I[Ljava/lang/String;)V

    .line 1285
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher4/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    .line 1287
    .end local v8    # "packages":[Ljava/lang/String;
    :cond_9
    const-string v12, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1290
    invoke-static {}, Lcom/android/launcher4/Launcher;->getLauncher()Lcom/android/launcher4/Launcher;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 1291
    invoke-static {}, Lcom/android/launcher4/Launcher;->getLauncher()Lcom/android/launcher4/Launcher;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher4/Launcher;->updateView()V

    .line 1294
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/LauncherModel;->forceReload()V

    goto/16 :goto_0

    .line 1295
    :cond_b
    const-string v12, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 1301
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1302
    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 1304
    .local v4, "currentConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher4/LauncherModel;->mFirstUse:Z

    if-eqz v12, :cond_e

    const v5, 0x493e0

    .line 1307
    .local v5, "delay":I
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    int-to-long v14, v5

    cmp-long v12, v12, v14

    if-lez v12, :cond_c

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher4/LauncherModel;->mPreviousConfigMcc:I

    iget v13, v4, Landroid/content/res/Configuration;->mcc:I

    if-eq v12, v13, :cond_c

    .line 1308
    const-string v12, "Launcher.Model"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Reload apps on config change. curr_mcc:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1309
    iget v14, v4, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " prevmcc:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher4/LauncherModel;->mPreviousConfigMcc:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1308
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/LauncherModel;->forceReload()V

    .line 1314
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher4/LauncherModel;->mFirstUse:Z

    if-eqz v12, :cond_d

    .line 1315
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v11

    .line 1316
    .local v11, "spKey":Ljava/lang/String;
    sget-object v12, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    const/4 v13, 0x0

    invoke-virtual {v12, v11, v13}, Lcom/android/launcher4/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 1317
    .local v10, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v13, "first_use"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1318
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher4/LauncherModel;->mFirstUse:Z

    .line 1321
    .end local v10    # "sp":Landroid/content/SharedPreferences;
    .end local v11    # "spKey":Ljava/lang/String;
    :cond_d
    iget v12, v4, Landroid/content/res/Configuration;->mcc:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher4/LauncherModel;->mPreviousConfigMcc:I

    goto/16 :goto_0

    .line 1304
    .end local v5    # "delay":I
    :cond_e
    const/4 v5, 0x0

    goto :goto_2

    .line 1322
    .end local v4    # "currentConfig":Landroid/content/res/Configuration;
    :cond_f
    const-string v12, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    .line 1323
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 1324
    const-string v12, "android.search.action.SEARCHABLES_CHANGED"

    .line 1325
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1326
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher4/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v12, :cond_1

    .line 1327
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher4/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher4/LauncherModel$Callbacks;

    .line 1328
    .local v3, "callbacks":Lcom/android/launcher4/LauncherModel$Callbacks;
    if-eqz v3, :cond_1

    .line 1329
    invoke-interface {v3}, Lcom/android/launcher4/LauncherModel$Callbacks;->bindSearchablesChanged()V

    goto/16 :goto_0

    .line 1332
    .end local v3    # "callbacks":Lcom/android/launcher4/LauncherModel$Callbacks;
    :cond_11
    const-string v12, "com.syu.launcherdisplayico"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1333
    const-string v12, "hy"

    const-string v13, "action111111111"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    const-string v12, "persist.fyt.zh_frontview_enable"

    const/4 v13, 0x0

    .line 1334
    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    sput-object v12, Lcom/android/launcher4/LauncherApplication;->frontview_endble:Ljava/lang/Boolean;

    .line 1336
    sget-object v12, Lcom/android/launcher4/LauncherApplication;->frontview_endble:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 1337
    const-string v12, "com.syu.frontvideo"

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/launcher4/LauncherApplication;->appEnable(Ljava/lang/String;I)V

    .line 1338
    const-string v12, "com.syu.av"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/launcher4/LauncherApplication;->appEnable(Ljava/lang/String;I)V

    .line 1344
    :goto_3
    sget-object v12, Lcom/android/launcher4/LauncherModel;->sWorker:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher4/LauncherModel;->reload:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1345
    sget-object v12, Lcom/android/launcher4/LauncherModel;->sWorker:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher4/LauncherModel;->reload:Ljava/lang/Runnable;

    const-wide/16 v14, 0xc8

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1340
    :cond_12
    const-string v12, "com.syu.frontvideo"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/launcher4/LauncherApplication;->appEnable(Ljava/lang/String;I)V

    .line 1341
    const-string v12, "com.syu.av"

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/launcher4/LauncherApplication;->appEnable(Ljava/lang/String;I)V

    goto :goto_3
.end method

.method queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/launcher4/ShortcutInfo;Landroid/database/Cursor;I)Z
    .locals 2
    .param p2, "info"    # Lcom/android/launcher4/ShortcutInfo;
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "iconIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[B>;",
            "Lcom/android/launcher4/ShortcutInfo;",
            "Landroid/database/Cursor;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p1, "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;[B>;"
    const/4 v0, 0x0

    .line 3465
    iget-boolean v1, p0, Lcom/android/launcher4/LauncherModel;->mAppsCanBeOnRemoveableStorage:Z

    if-nez v1, :cond_1

    .line 3478
    :cond_0
    :goto_0
    return v0

    .line 3474
    :cond_1
    iget-boolean v1, p2, Lcom/android/launcher4/ShortcutInfo;->customIcon:Z

    if-nez v1, :cond_0

    iget-boolean v1, p2, Lcom/android/launcher4/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v1, :cond_0

    .line 3475
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3476
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resetLoadedState(ZZ)V
    .locals 2
    .param p1, "resetAllAppsLoaded"    # Z
    .param p2, "resetWorkspaceLoaded"    # Z

    .prologue
    .line 1362
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1366
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher4/LauncherModel;->stopLoaderLocked()Z

    .line 1367
    if-eqz p1, :cond_0

    .line 1368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/LauncherModel;->mAllAppsLoaded:Z

    .line 1369
    :cond_0
    if-eqz p2, :cond_1

    .line 1370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/LauncherModel;->mWorkspaceLoaded:Z

    .line 1362
    :cond_1
    monitor-exit v1

    .line 1372
    return-void

    .line 1362
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method resolveWidgetsForMimeType(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher4/InstallWidgetReceiver$WidgetMimeTypeHandlerData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3364
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 3365
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3367
    .local v6, "supportedConfigurationActivities":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher4/InstallWidgetReceiver$WidgetMimeTypeHandlerData;>;"
    new-instance v7, Landroid/content/Intent;

    .line 3368
    const-string v9, "com.android.launcher4.action.SUPPORTS_CLIPDATA_MIMETYPE"

    .line 3367
    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3369
    .local v7, "supportsIntent":Landroid/content/Intent;
    invoke-virtual {v7, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3374
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v8

    .line 3375
    .local v8, "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3376
    .local v2, "configurationComponentToWidget":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 3386
    const/high16 v9, 0x10000

    .line 3385
    invoke-virtual {v5, v7, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3387
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 3398
    return-object v6

    .line 3376
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    .line 3377
    .local v3, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v10, v3, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v2, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3387
    .end local v3    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 3388
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3389
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    new-instance v4, Landroid/content/ComponentName;

    .line 3390
    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 3389
    invoke-direct {v4, v9, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3391
    .local v4, "infoComponent":Landroid/content/ComponentName;
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3393
    new-instance v11, Lcom/android/launcher4/InstallWidgetReceiver$WidgetMimeTypeHandlerData;

    .line 3395
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/appwidget/AppWidgetProviderInfo;

    .line 3393
    invoke-direct {v11, v3, v9}, Lcom/android/launcher4/InstallWidgetReceiver$WidgetMimeTypeHandlerData;-><init>(Landroid/content/pm/ResolveInfo;Landroid/appwidget/AppWidgetProviderInfo;)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public startLoader(ZI)V
    .locals 3
    .param p1, "isLaunching"    # Z
    .param p2, "synchronousBindPage"    # I

    .prologue
    .line 1411
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1419
    :try_start_0
    sget-object v0, Lcom/android/launcher4/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1423
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher4/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1426
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher4/LauncherModel;->stopLoaderLocked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 1427
    :goto_0
    new-instance v0, Lcom/android/launcher4/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/android/launcher4/LauncherModel;->mApp:Lcom/android/launcher4/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher4/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2, p1}, Lcom/android/launcher4/LauncherModel$LoaderTask;-><init>(Lcom/android/launcher4/LauncherModel;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/launcher4/LauncherModel;->mLoaderTask:Lcom/android/launcher4/LauncherModel$LoaderTask;

    .line 1428
    const/4 v0, -0x1

    if-le p2, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher4/LauncherModel;->mAllAppsLoaded:Z

    if-eqz v0, :cond_2

    .line 1429
    iget-boolean v0, p0, Lcom/android/launcher4/LauncherModel;->mWorkspaceLoaded:Z

    if-eqz v0, :cond_2

    .line 1430
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel;->mLoaderTask:Lcom/android/launcher4/LauncherModel$LoaderTask;

    invoke-virtual {v0, p2}, Lcom/android/launcher4/LauncherModel$LoaderTask;->runBindSynchronousPage(I)V

    .line 1411
    :cond_0
    :goto_1
    monitor-exit v1

    .line 1437
    return-void

    .line 1426
    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    .line 1432
    :cond_2
    sget-object v0, Lcom/android/launcher4/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 1433
    sget-object v0, Lcom/android/launcher4/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher4/LauncherModel;->mLoaderTask:Lcom/android/launcher4/LauncherModel$LoaderTask;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1411
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startLoaderFromBackground()V
    .locals 4

    .prologue
    .line 1381
    const/4 v1, 0x0

    .line 1382
    .local v1, "runLoader":Z
    iget-object v2, p0, Lcom/android/launcher4/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 1383
    iget-object v2, p0, Lcom/android/launcher4/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/LauncherModel$Callbacks;

    .line 1384
    .local v0, "callbacks":Lcom/android/launcher4/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1386
    invoke-interface {v0}, Lcom/android/launcher4/LauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1387
    const/4 v1, 0x1

    .line 1391
    .end local v0    # "callbacks":Lcom/android/launcher4/LauncherModel$Callbacks;
    :cond_0
    if-eqz v1, :cond_1

    .line 1392
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher4/LauncherModel;->startLoader(ZI)V

    .line 1394
    :cond_1
    return-void
.end method

.method public stopLoader()V
    .locals 2

    .prologue
    .line 1450
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1451
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel;->mLoaderTask:Lcom/android/launcher4/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 1452
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel;->mLoaderTask:Lcom/android/launcher4/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherModel$LoaderTask;->stopLocked()V

    .line 1450
    :cond_0
    monitor-exit v1

    .line 1455
    return-void

    .line 1450
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unbindItemInfosAndClearQueuedBindRunnables()V
    .locals 2

    .prologue
    .line 531
    sget-object v0, Lcom/android/launcher4/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 532
    new-instance v0, Ljava/lang/RuntimeException;

    .line 533
    const-string v1, "Expected unbindLauncherItemInfos() to be called from the main thread"

    .line 532
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_0
    sget-object v0, Lcom/android/launcher4/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 540
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel;->mHandler:Lcom/android/launcher4/DeferredHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/DeferredHandler;->cancelAllRunnablesOfType(I)V

    .line 542
    invoke-virtual {p0}, Lcom/android/launcher4/LauncherModel;->unbindWorkspaceItemsOnMainThread()V

    .line 543
    return-void
.end method

.method unbindWorkspaceItemsOnMainThread()V
    .locals 5

    .prologue
    .line 550
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .local v2, "tmpWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v1, "tmpAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    sget-object v4, Lcom/android/launcher4/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v4

    .line 553
    :try_start_0
    sget-object v3, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 554
    sget-object v3, Lcom/android/launcher4/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 552
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    new-instance v0, Lcom/android/launcher4/LauncherModel$5;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/launcher4/LauncherModel$5;-><init>(Lcom/android/launcher4/LauncherModel;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 567
    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lcom/android/launcher4/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 568
    return-void

    .line 552
    .end local v0    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method updateSavedIcon(Landroid/content/Context;Lcom/android/launcher4/ShortcutInfo;[B)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher4/ShortcutInfo;
    .param p3, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 3482
    const/4 v2, 0x0

    .line 3484
    .local v2, "needSave":Z
    if-eqz p3, :cond_2

    .line 3485
    const/4 v5, 0x0

    .line 3486
    :try_start_0
    array-length v6, p3

    .line 3485
    invoke-static {p3, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3487
    .local v3, "saved":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/launcher4/LauncherModel;->mIconCache:Lcom/android/launcher4/IconCache;

    invoke-virtual {p2, v5}, Lcom/android/launcher4/ShortcutInfo;->getIcon(Lcom/android/launcher4/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3488
    .local v1, "loaded":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    move v2, v4

    .line 3495
    .end local v1    # "loaded":Landroid/graphics/Bitmap;
    .end local v3    # "saved":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v2, :cond_0

    .line 3496
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "going to save icon bitmap for info="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3499
    invoke-static {p1, p2}, Lcom/android/launcher4/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;)V

    .line 3501
    :cond_0
    return-void

    .line 3488
    .restart local v1    # "loaded":Landroid/graphics/Bitmap;
    .restart local v3    # "saved":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 3490
    .end local v1    # "loaded":Landroid/graphics/Bitmap;
    .end local v3    # "saved":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 3492
    :catch_0
    move-exception v0

    .line 3493
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1143
    .local p2, "screens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1144
    .local v5, "screensCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1145
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v6, Lcom/android/launcher4/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    .line 1148
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1149
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1156
    new-instance v4, Lcom/android/launcher4/LauncherModel$12;

    invoke-direct {v4, p0, v0, v6, v5}, Lcom/android/launcher4/LauncherModel$12;-><init>(Lcom/android/launcher4/LauncherModel;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/ArrayList;)V

    .line 1178
    .local v4, "r":Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/launcher4/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1179
    return-void

    .line 1150
    .end local v4    # "r":Ljava/lang/Runnable;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1151
    .local v2, "id":J
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-gez v7, :cond_0

    .line 1152
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method
