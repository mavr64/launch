.class public Lcom/android/launcher4/LauncherAppState;
.super Ljava/lang/Object;
.source "LauncherAppState.java"


# static fields
.field private static INSTANCE:Lcom/android/launcher4/LauncherAppState; = null

.field private static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "com.android.launcher4.prefs"

.field private static final TAG:Ljava/lang/String; = "LauncherAppState"

.field static appsWidgetsDetach:Z

.field private static sContext:Landroid/content/Context;

.field private static sLauncherProvider:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher4/LauncherProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppFilter:Lcom/android/launcher4/AppFilter;

.field private mDynamicGrid:Lcom/android/launcher4/DynamicGrid;

.field private final mFavoritesObserver:Landroid/database/ContentObserver;

.field private mIconCache:Lcom/android/launcher4/IconCache;

.field private mIsScreenLarge:Z

.field private mLongPressTimeout:I

.field private mModel:Lcom/android/launcher4/LauncherModel;

.field private mScreenDensity:F

.field private mWidgetPreviewCacheDb:Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher4/LauncherAppState;->appsWidgetsDetach:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/16 v2, 0x12c

    iput v2, p0, Lcom/android/launcher4/LauncherAppState;->mLongPressTimeout:I

    .line 148
    new-instance v2, Lcom/android/launcher4/LauncherAppState$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/launcher4/LauncherAppState$1;-><init>(Lcom/android/launcher4/LauncherAppState;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/launcher4/LauncherAppState;->mFavoritesObserver:Landroid/database/ContentObserver;

    .line 89
    sget-object v2, Lcom/android/launcher4/LauncherAppState;->sContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 90
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "LauncherAppState inited before app context set"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_0
    const-string v2, "Launcher"

    const-string v3, "LauncherAppState inited"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v2, Lcom/android/launcher4/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    sget-object v2, Lcom/android/launcher4/LauncherAppState;->sContext:Landroid/content/Context;

    const-string v3, "L"

    invoke-static {v2, v3}, Lcom/android/launcher4/MemoryTracker;->startTrackingMe(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    :cond_1
    sget-object v2, Lcom/android/launcher4/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher4/LauncherAppState;->isScreenLarge(Landroid/content/res/Resources;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher4/LauncherAppState;->mIsScreenLarge:Z

    .line 101
    sget-object v2, Lcom/android/launcher4/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/android/launcher4/LauncherAppState;->mScreenDensity:F

    .line 103
    new-instance v2, Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;

    sget-object v3, Lcom/android/launcher4/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher4/LauncherAppState;->mWidgetPreviewCacheDb:Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;

    .line 104
    new-instance v2, Lcom/android/launcher4/IconCache;

    sget-object v3, Lcom/android/launcher4/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/launcher4/IconCache;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher4/LauncherAppState;->mIconCache:Lcom/android/launcher4/IconCache;

    .line 106
    sget-object v2, Lcom/android/launcher4/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/launcher4/LauncherAppState;->appsWidgetsDetach:Z

    .line 107
    sget-object v2, Lcom/android/launcher4/LauncherAppState;->sContext:Landroid/content/Context;

    const/high16 v3, 0x7f0c0000

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher4/AppFilter;->loadByName(Ljava/lang/String;)Lcom/android/launcher4/AppFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher4/LauncherAppState;->mAppFilter:Lcom/android/launcher4/AppFilter;

    .line 108
    new-instance v2, Lcom/android/launcher4/LauncherModel;

    iget-object v3, p0, Lcom/android/launcher4/LauncherAppState;->mIconCache:Lcom/android/launcher4/IconCache;

    iget-object v4, p0, Lcom/android/launcher4/LauncherAppState;->mAppFilter:Lcom/android/launcher4/AppFilter;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/launcher4/LauncherModel;-><init>(Lcom/android/launcher4/LauncherAppState;Lcom/android/launcher4/IconCache;Lcom/android/launcher4/AppFilter;)V

    iput-object v2, p0, Lcom/android/launcher4/LauncherAppState;->mModel:Lcom/android/launcher4/LauncherModel;

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 115
    sget-object v2, Lcom/android/launcher4/LauncherAppState;->sContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher4/LauncherAppState;->mModel:Lcom/android/launcher4/LauncherModel;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 117
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    sget-object v2, Lcom/android/launcher4/LauncherAppState;->sContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher4/LauncherAppState;->mModel:Lcom/android/launcher4/LauncherModel;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    sget-object v2, Lcom/android/launcher4/LauncherAppState;->sContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher4/LauncherAppState;->mModel:Lcom/android/launcher4/LauncherModel;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.search.action.SEARCHABLES_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    sget-object v2, Lcom/android/launcher4/LauncherAppState;->sContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher4/LauncherAppState;->mModel:Lcom/android/launcher4/LauncherModel;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    sget-object v2, Lcom/android/launcher4/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 131
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/launcher4/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    .line 132
    iget-object v4, p0, Lcom/android/launcher4/LauncherAppState;->mFavoritesObserver:Landroid/database/ContentObserver;

    .line 131
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 133
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/LauncherAppState;)Lcom/android/launcher4/LauncherModel;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/launcher4/LauncherAppState;->mModel:Lcom/android/launcher4/LauncherModel;

    return-object v0
.end method

.method public static getInstance()Lcom/android/launcher4/LauncherAppState;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/launcher4/LauncherAppState;->INSTANCE:Lcom/android/launcher4/LauncherAppState;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/launcher4/LauncherAppState;

    invoke-direct {v0}, Lcom/android/launcher4/LauncherAppState;-><init>()V

    sput-object v0, Lcom/android/launcher4/LauncherAppState;->INSTANCE:Lcom/android/launcher4/LauncherAppState;

    .line 70
    :cond_0
    sget-object v0, Lcom/android/launcher4/LauncherAppState;->INSTANCE:Lcom/android/launcher4/LauncherAppState;

    return-object v0
.end method

.method public static getInstanceNoCreate()Lcom/android/launcher4/LauncherAppState;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/launcher4/LauncherAppState;->INSTANCE:Lcom/android/launcher4/LauncherAppState;

    return-object v0
.end method

.method static getLauncherProvider()Lcom/android/launcher4/LauncherProvider;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/android/launcher4/LauncherAppState;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/LauncherProvider;

    return-object v0
.end method

.method public static getSharedPreferencesKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const-string v0, "com.android.launcher4.prefs"

    return-object v0
.end method

.method public static isScreenLandscape(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 226
    const/4 v1, 0x2

    .line 225
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isScreenLarge(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 221
    const v0, 0x7f0a0002

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    sget-object v0, Lcom/android/launcher4/LauncherAppState;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setApplicationContext called twice! old="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher4/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/launcher4/LauncherAppState;->sContext:Landroid/content/Context;

    .line 86
    return-void
.end method

.method static setLauncherProvider(Lcom/android/launcher4/LauncherProvider;)V
    .locals 1
    .param p0, "provider"    # Lcom/android/launcher4/LauncherProvider;

    .prologue
    .line 183
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/launcher4/LauncherAppState;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    .line 184
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/launcher4/LauncherAppState;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method getDynamicGrid()Lcom/android/launcher4/DynamicGrid;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/launcher4/LauncherAppState;->mDynamicGrid:Lcom/android/launcher4/DynamicGrid;

    return-object v0
.end method

.method getIconCache()Lcom/android/launcher4/IconCache;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/launcher4/LauncherAppState;->mIconCache:Lcom/android/launcher4/IconCache;

    return-object v0
.end method

.method public getLongPressTimeout()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/android/launcher4/LauncherAppState;->mLongPressTimeout:I

    return v0
.end method

.method getModel()Lcom/android/launcher4/LauncherModel;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/launcher4/LauncherAppState;->mModel:Lcom/android/launcher4/LauncherModel;

    return-object v0
.end method

.method public getScreenDensity()F
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/android/launcher4/LauncherAppState;->mScreenDensity:F

    return v0
.end method

.method getWidgetPreviewCacheDb()Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/launcher4/LauncherAppState;->mWidgetPreviewCacheDb:Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;

    return-object v0
.end method

.method initDynamicGrid(Landroid/content/Context;IIIIII)Lcom/android/launcher4/DeviceProfile;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "availableWidth"    # I
    .param p7, "availableHeight"    # I

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/launcher4/LauncherAppState;->mDynamicGrid:Lcom/android/launcher4/DynamicGrid;

    if-nez v1, :cond_0

    .line 198
    new-instance v0, Lcom/android/launcher4/DynamicGrid;

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    .line 201
    invoke-direct/range {v0 .. v8}, Lcom/android/launcher4/DynamicGrid;-><init>(Landroid/content/Context;Landroid/content/res/Resources;IIIIII)V

    .line 198
    iput-object v0, p0, Lcom/android/launcher4/LauncherAppState;->mDynamicGrid:Lcom/android/launcher4/DynamicGrid;

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/LauncherAppState;->mDynamicGrid:Lcom/android/launcher4/DynamicGrid;

    invoke-virtual {v1}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v0

    .line 206
    .local v0, "grid":Lcom/android/launcher4/DeviceProfile;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher4/Utilities;->setIconSize(I)V

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher4/DeviceProfile;->updateFromConfiguration(Landroid/content/res/Resources;IIII)V

    .line 209
    return-object v0
.end method

.method public isScreenLarge()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/launcher4/LauncherAppState;->mIsScreenLarge:Z

    return v0
.end method

.method public onTerminate()V
    .locals 3

    .prologue
    .line 139
    sget-object v1, Lcom/android/launcher4/LauncherAppState;->sContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher4/LauncherAppState;->mModel:Lcom/android/launcher4/LauncherModel;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    sget-object v1, Lcom/android/launcher4/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 142
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/launcher4/LauncherAppState;->mFavoritesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 143
    return-void
.end method

.method setLauncher(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/LauncherModel;
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher4/Launcher;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/launcher4/LauncherAppState;->mModel:Lcom/android/launcher4/LauncherModel;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setLauncher() called before init()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/LauncherAppState;->mModel:Lcom/android/launcher4/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/LauncherModel;->initialize(Lcom/android/launcher4/LauncherModel$Callbacks;)V

    .line 163
    iget-object v0, p0, Lcom/android/launcher4/LauncherAppState;->mModel:Lcom/android/launcher4/LauncherModel;

    return-object v0
.end method

.method shouldShowAppOrWidgetProvider(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/launcher4/LauncherAppState;->mAppFilter:Lcom/android/launcher4/AppFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher4/LauncherAppState;->mAppFilter:Lcom/android/launcher4/AppFilter;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
