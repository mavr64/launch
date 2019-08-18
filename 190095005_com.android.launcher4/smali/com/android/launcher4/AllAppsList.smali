.class Lcom/android/launcher4/AllAppsList;
.super Ljava/lang/Object;
.source "AllAppsList.java"


# static fields
.field public static final DEFAULT_APPLICATIONS_NUMBER:I = 0x2a

.field public static data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppFilter:Lcom/android/launcher4/AppFilter;

.field private mIconCache:Lcom/android/launcher4/IconCache;

.field public modified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    const/16 v1, 0x2a

    .line 42
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/launcher4/AllAppsList;->data:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher4/IconCache;Lcom/android/launcher4/AppFilter;)V
    .locals 2
    .param p1, "iconCache"    # Lcom/android/launcher4/IconCache;
    .param p2, "appFilter"    # Lcom/android/launcher4/AppFilter;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    .line 46
    const/16 v1, 0x2a

    .line 45
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher4/AllAppsList;->added:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 60
    iput-object p1, p0, Lcom/android/launcher4/AllAppsList;->mIconCache:Lcom/android/launcher4/IconCache;

    .line 61
    iput-object p2, p0, Lcom/android/launcher4/AllAppsList;->mAppFilter:Lcom/android/launcher4/AppFilter;

    .line 62
    return-void
.end method

.method static findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 359
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 360
    .local v1, "mainIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const/4 v3, 0x0

    .line 363
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 365
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v0

    .restart local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private static findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 388
    .local p0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 389
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 395
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 390
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/AppInfo;

    .line 391
    .local v2, "info":Lcom/android/launcher4/AppInfo;
    iget-object v3, v2, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 392
    const/4 v3, 0x1

    goto :goto_1

    .line 389
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "className":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 380
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 374
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 375
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 376
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 377
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher4/AppInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 403
    sget-object v2, Lcom/android/launcher4/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 410
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 403
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/AppInfo;

    .line 404
    .local v1, "info":Lcom/android/launcher4/AppInfo;
    iget-object v3, v1, Lcom/android/launcher4/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 405
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/android/launcher4/AppInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher4/AppInfo;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 71
    sget v0, Lshare/Config;->CHIP_UIID:I

    packed-switch v0, :pswitch_data_0

    .line 81
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->bForegin:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher4/LauncherApplication;->bForegin:Ljava/lang/String;

    .line 82
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->bForegin:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 83
    :cond_2
    iget-object v0, p1, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v1, "com.android.launcher4"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 84
    if-eqz v0, :cond_4

    .line 85
    iget-object v0, p1, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string v1, "com.android.launcher4.GoogleSettingActivity"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 86
    if-eqz v0, :cond_4

    .line 144
    :cond_3
    :goto_1
    return-void

    .line 73
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/launcher4/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.dvd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    sput-boolean v2, Lcom/android/launcher4/LauncherApplication;->isHaveDvd:Z

    .line 75
    invoke-static {}, Lcom/android/launcher4/Launcher;->getLauncher()Lcom/android/launcher4/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/android/launcher4/Launcher;->getLauncher()Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->activeWindow()V

    goto :goto_0

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/android/launcher4/AllAppsList;->mAppFilter:Lcom/android/launcher4/AppFilter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher4/AllAppsList;->mAppFilter:Lcom/android/launcher4/AppFilter;

    iget-object v1, p1, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    :cond_5
    sget-object v0, Lcom/android/launcher4/AllAppsList;->data:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/android/launcher4/AllAppsList;->findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 97
    sget v0, Lshare/Config;->PLATFORM_ID:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_6

    sget v0, Lshare/Config;->PLATFORM_ID:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_6

    .line 98
    sget v0, Lshare/Config;->CHIP_UIID:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    sget v0, Lshare/Config;->CHIP_UIID:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6

    .line 99
    sget v0, Lshare/Config;->CUSTOMER_ID:I

    if-eq v0, v3, :cond_6

    sget v0, Lshare/Config;->CUSTOMER_ID:I

    const/16 v1, 0x35

    if-eq v0, v1, :cond_6

    .line 100
    iget-object v0, p1, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string v1, "com.syu.dvd"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 101
    if-nez v0, :cond_3

    .line 107
    :cond_6
    sget v0, Lshare/Config;->CHIP_UIID:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 108
    iget-object v0, p1, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 109
    const-string v1, "com.android.settings"

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 109
    if-nez v0, :cond_3

    .line 114
    :cond_7
    sget v0, Lshare/Config;->CUSTOMER_ID:I

    if-ne v0, v3, :cond_8

    .line 115
    iget-object v0, p1, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 116
    const-string v1, "com.ludashi.benchmark"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 116
    if-nez v0, :cond_3

    .line 117
    iget-object v0, p1, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 118
    const-string v1, "com.antutu.ABenchMark"

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 118
    if-nez v0, :cond_3

    .line 123
    :cond_8
    sget v0, Lshare/Config;->CHIP_UIID:I

    packed-switch v0, :pswitch_data_1

    .line 135
    :cond_9
    iget-object v0, p1, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.autonavi.amapauto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 136
    sput-boolean v2, Lshare/Config;->EXISTAMPAUTO:Z

    .line 138
    :cond_a
    iget-object v0, p1, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.voice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 139
    sput-boolean v2, Lshare/Config;->EXISTVOICE:Z

    .line 142
    :cond_b
    sget-object v0, Lcom/android/launcher4/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/android/launcher4/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 125
    :pswitch_1
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->bHideUniCar:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 126
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->bHideUniCar:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 127
    iget-object v0, p1, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string v1, "com.syu.unicar"

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 128
    if-eqz v0, :cond_9

    goto/16 :goto_1

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    .line 123
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_1
    .end packed-switch
.end method

.method public addPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    .line 166
    invoke-static {p1, p2}, Lcom/android/launcher4/AllAppsList;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 169
    .local v1, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget v2, Lshare/Config;->PLATFORM_ID:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    sget v2, Lshare/Config;->PLATFORM_ID:I

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2

    .line 170
    sget v2, Lshare/Config;->CHIP_UIID:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    sget v2, Lshare/Config;->CHIP_UIID:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    .line 171
    sget v2, Lshare/Config;->CUSTOMER_ID:I

    if-ne v2, v4, :cond_0

    sget v2, Lshare/Config;->CUSTOMER_ID:I

    const/16 v3, 0x35

    if-ne v2, v3, :cond_2

    .line 172
    :cond_0
    const-string v2, "com.syu.dvd"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    :cond_1
    :goto_0
    return-void

    .line 178
    :cond_2
    sget v2, Lshare/Config;->CUSTOMER_ID:I

    if-ne v2, v4, :cond_3

    .line 179
    const-string v2, "com.ludashi.benchmark"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    const-string v2, "com.antutu.ABenchMark"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 185
    :cond_3
    sget v2, Lshare/Config;->CHIP_UIID:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 186
    const-string v2, "com.android.settings"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    :cond_4
    sget v2, Lshare/Config;->CHIP_UIID:I

    packed-switch v2, :pswitch_data_0

    .line 202
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 203
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 204
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    new-instance v3, Lcom/android/launcher4/AppInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher4/AllAppsList;->mIconCache:Lcom/android/launcher4/IconCache;

    .line 205
    const/4 v6, 0x0

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/android/launcher4/AppInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher4/IconCache;Ljava/util/HashMap;)V

    .line 204
    invoke-virtual {p0, v3}, Lcom/android/launcher4/AllAppsList;->add(Lcom/android/launcher4/AppInfo;)V

    goto :goto_1

    .line 193
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    :pswitch_0
    sget-object v2, Lcom/android/launcher4/LauncherApplication;->bHideUniCar:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 194
    sget-object v2, Lcom/android/launcher4/LauncherApplication;->bHideUniCar:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 195
    const-string v2, "com.syu.unicar"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/android/launcher4/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 149
    iget-object v0, p0, Lcom/android/launcher4/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 150
    iget-object v0, p0, Lcom/android/launcher4/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 151
    iget-object v0, p0, Lcom/android/launcher4/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 152
    return-void
.end method

.method public get(I)Lcom/android/launcher4/AppInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 159
    sget-object v0, Lcom/android/launcher4/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/AppInfo;

    return-object v0
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 214
    sget v6, Lshare/Config;->CHIP_UIID:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_0

    .line 215
    const-string v6, "com.syu.dvd"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 216
    sput-boolean v8, Lcom/android/launcher4/LauncherApplication;->isHaveDvd:Z

    .line 219
    :cond_0
    sget-object v1, Lcom/android/launcher4/AllAppsList;->data:Ljava/util/ArrayList;

    .line 220
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher4/AppInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_0
    if-gez v3, :cond_1

    .line 246
    iget-object v6, p0, Lcom/android/launcher4/AllAppsList;->mIconCache:Lcom/android/launcher4/IconCache;

    invoke-virtual {v6}, Lcom/android/launcher4/IconCache;->flush()V

    .line 247
    return-void

    .line 221
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/AppInfo;

    .line 222
    .local v4, "info":Lcom/android/launcher4/AppInfo;
    iget-object v6, v4, Lcom/android/launcher4/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 223
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 224
    iget-object v6, p0, Lcom/android/launcher4/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 228
    :cond_2
    const-string v6, "com.autonavi.amapauto"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 229
    sput-boolean v8, Lshare/Config;->EXISTAMPAUTO:Z

    .line 231
    :cond_3
    const-string v6, "com.syu.voice"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 232
    sput-boolean v8, Lshare/Config;->EXISTVOICE:Z

    .line 236
    :cond_4
    sget-object v6, Lcom/android/launcher4/RechargeDialogFragment;->RechargePackageName:Ljava/lang/String;

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/launcher4/RechargeDialogFragment;->RechargePackageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 237
    sput-object v9, Lcom/android/launcher4/RechargeDialogFragment;->RechargePackageName:Ljava/lang/String;

    .line 239
    sget-object v6, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    const-string v7, "RechargePackageName"

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher4/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 240
    .local v5, "sPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 241
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "defaultPackageName"

    invoke-interface {v2, v6, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 242
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 220
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "sPreferences":Landroid/content/SharedPreferences;
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/launcher4/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public updatePackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x6

    const/4 v8, 0x1

    .line 253
    sget v6, Lshare/Config;->CHIP_UIID:I

    if-ne v6, v9, :cond_0

    .line 254
    const-string v6, "com.syu.dvd"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 255
    sput-boolean v8, Lcom/android/launcher4/LauncherApplication;->isHaveDvd:Z

    .line 258
    :cond_0
    invoke-static {p1, p2}, Lcom/android/launcher4/AllAppsList;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 261
    .local v5, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget v6, Lshare/Config;->PLATFORM_ID:I

    const/16 v7, 0xd

    if-eq v6, v7, :cond_3

    sget v6, Lshare/Config;->PLATFORM_ID:I

    const/16 v7, 0xc

    if-eq v6, v7, :cond_3

    .line 262
    sget v6, Lshare/Config;->CHIP_UIID:I

    if-eq v6, v9, :cond_3

    sget v6, Lshare/Config;->CHIP_UIID:I

    const/4 v7, 0x7

    if-eq v6, v7, :cond_3

    .line 263
    sget v6, Lshare/Config;->CUSTOMER_ID:I

    if-ne v6, v10, :cond_1

    sget v6, Lshare/Config;->CUSTOMER_ID:I

    const/16 v7, 0x35

    if-ne v6, v7, :cond_3

    .line 264
    :cond_1
    const-string v6, "com.syu.dvd"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 349
    :cond_2
    :goto_0
    return-void

    .line 270
    :cond_3
    sget v6, Lshare/Config;->CUSTOMER_ID:I

    if-ne v6, v10, :cond_4

    .line 271
    const-string v6, "com.ludashi.benchmark"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 272
    const-string v6, "com.antutu.ABenchMark"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 277
    :cond_4
    sget v6, Lshare/Config;->CHIP_UIID:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_5

    .line 278
    const-string v6, "com.android.settings"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 283
    :cond_5
    sget v6, Lshare/Config;->CHIP_UIID:I

    packed-switch v6, :pswitch_data_0

    .line 294
    :cond_6
    const-string v6, "com.autonavi.amapauto"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 295
    sput-boolean v8, Lshare/Config;->EXISTAMPAUTO:Z

    .line 297
    :cond_7
    const-string v6, "com.syu.voice"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 298
    sput-boolean v8, Lshare/Config;->EXISTVOICE:Z

    .line 302
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_c

    .line 306
    sget-object v6, Lcom/android/launcher4/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_1
    if-gez v3, :cond_9

    .line 321
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 322
    .local v2, "count":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    .line 323
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 325
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 326
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 324
    invoke-direct {p0, v6, v7}, Lcom/android/launcher4/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher4/AppInfo;

    move-result-object v0

    .line 327
    .local v0, "applicationInfo":Lcom/android/launcher4/AppInfo;
    if-nez v0, :cond_b

    .line 328
    new-instance v6, Lcom/android/launcher4/AppInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 329
    iget-object v8, p0, Lcom/android/launcher4/AllAppsList;->mIconCache:Lcom/android/launcher4/IconCache;

    invoke-direct {v6, v7, v4, v8, v11}, Lcom/android/launcher4/AppInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher4/IconCache;Ljava/util/HashMap;)V

    .line 328
    invoke-virtual {p0, v6}, Lcom/android/launcher4/AllAppsList;->add(Lcom/android/launcher4/AppInfo;)V

    .line 322
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 285
    .end local v0    # "applicationInfo":Lcom/android/launcher4/AppInfo;
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    :pswitch_0
    sget-object v6, Lcom/android/launcher4/LauncherApplication;->bHideUniCar:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 286
    sget-object v6, Lcom/android/launcher4/LauncherApplication;->bHideUniCar:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 287
    const-string v6, "com.syu.unicar"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto/16 :goto_0

    .line 307
    .restart local v3    # "i":I
    :cond_9
    sget-object v6, Lcom/android/launcher4/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/AppInfo;

    .line 308
    .restart local v0    # "applicationInfo":Lcom/android/launcher4/AppInfo;
    iget-object v6, v0, Lcom/android/launcher4/AppInfo;->intent:Landroid/content/Intent;

    .line 309
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 310
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 311
    invoke-static {v5, v1}, Lcom/android/launcher4/AllAppsList;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 312
    iget-object v6, p0, Lcom/android/launcher4/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v6, p0, Lcom/android/launcher4/AllAppsList;->mIconCache:Lcom/android/launcher4/IconCache;

    invoke-virtual {v6, v1}, Lcom/android/launcher4/IconCache;->remove(Landroid/content/ComponentName;)V

    .line 314
    sget-object v6, Lcom/android/launcher4/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 306
    :cond_a
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 331
    .end local v1    # "component":Landroid/content/ComponentName;
    .restart local v2    # "count":I
    .restart local v4    # "info":Landroid/content/pm/ResolveInfo;
    :cond_b
    iget-object v6, p0, Lcom/android/launcher4/AllAppsList;->mIconCache:Lcom/android/launcher4/IconCache;

    iget-object v7, v0, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Lcom/android/launcher4/IconCache;->remove(Landroid/content/ComponentName;)V

    .line 332
    iget-object v6, p0, Lcom/android/launcher4/AllAppsList;->mIconCache:Lcom/android/launcher4/IconCache;

    invoke-virtual {v6, v0, v4, v11}, Lcom/android/launcher4/IconCache;->getTitleAndIcon(Lcom/android/launcher4/AppInfo;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)V

    .line 333
    iget-object v6, p0, Lcom/android/launcher4/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 338
    .end local v0    # "applicationInfo":Lcom/android/launcher4/AppInfo;
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    :cond_c
    sget-object v6, Lcom/android/launcher4/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .restart local v3    # "i":I
    :goto_4
    if-ltz v3, :cond_2

    .line 339
    sget-object v6, Lcom/android/launcher4/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/AppInfo;

    .line 340
    .restart local v0    # "applicationInfo":Lcom/android/launcher4/AppInfo;
    iget-object v6, v0, Lcom/android/launcher4/AppInfo;->intent:Landroid/content/Intent;

    .line 341
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 342
    .restart local v1    # "component":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 343
    iget-object v6, p0, Lcom/android/launcher4/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v6, p0, Lcom/android/launcher4/AllAppsList;->mIconCache:Lcom/android/launcher4/IconCache;

    invoke-virtual {v6, v1}, Lcom/android/launcher4/IconCache;->remove(Landroid/content/ComponentName;)V

    .line 345
    sget-object v6, Lcom/android/launcher4/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 338
    :cond_d
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
