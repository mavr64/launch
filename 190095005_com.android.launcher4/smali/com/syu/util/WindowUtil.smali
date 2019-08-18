.class public Lcom/syu/util/WindowUtil;
.super Ljava/lang/Object;
.source "WindowUtil.java"


# static fields
.field public static AppPackageNmae:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "WindowUtil"

.field private static intent:Landroid/content/Intent;

.field private static mActivityManager:Landroid/app/IActivityManager;

.field private static visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "ru.yandex.yandexnavi"

    sput-object v0, Lcom/syu/util/WindowUtil;->AppPackageNmae:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syu/util/WindowUtil;->visible:Z

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAppInstalled(Ljava/lang/String;)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 110
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v2

    .line 115
    :cond_1
    :try_start_0
    sget-object v3, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher4/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 116
    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 121
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    if-eqz v1, :cond_0

    .line 124
    const/4 v2, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 119
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static initDefaultApp()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/syu/util/WindowUtil;->intent:Landroid/content/Intent;

    .line 34
    const-string v0, "persist.launcher.packagename"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/syu/util/WindowUtil;->AppPackageNmae:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static removePip(Landroid/view/View;)V
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 82
    sget-object v1, Lcom/syu/util/WindowUtil;->AppPackageNmae:Ljava/lang/String;

    invoke-static {v1}, Lcom/syu/util/WindowUtil;->checkAppInstalled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    sget-object v1, Lcom/syu/util/WindowUtil;->AppPackageNmae:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    if-eqz p0, :cond_0

    .line 87
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 90
    :cond_2
    sget-boolean v1, Lcom/syu/util/WindowUtil;->visible:Z

    if-eqz v1, :cond_5

    .line 91
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    sput-object v1, Lcom/syu/util/WindowUtil;->mActivityManager:Landroid/app/IActivityManager;

    .line 93
    :try_start_0
    sget-object v1, Lcom/syu/util/WindowUtil;->AppPackageNmae:Ljava/lang/String;

    const-string v2, "com.syu.camera360"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    sget-object v1, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.syu.camera360.hide"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
    :cond_3
    sget-object v1, Lcom/syu/util/WindowUtil;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->setPinnedStackVisible(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_1
    sget-object v1, Lcom/syu/util/WindowUtil;->AppPackageNmae:Ljava/lang/String;

    const-string v2, "com.autonavi.amapauto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 101
    :try_start_1
    sget-object v1, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherApplication;->removeGaoDeCoverView()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    :cond_4
    :goto_2
    sput-boolean v4, Lcom/syu/util/WindowUtil;->visible:Z

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 105
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    const-string v1, "WindowUtil --- \u5173\u95ed\u7a97\u53e3\u88ab\u8fc7\u6ee4"

    invoke-static {v1}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static startMapPip(Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 41
    sget-object v0, Lcom/syu/util/WindowUtil;->AppPackageNmae:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    if-eqz p0, :cond_0

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    sget-boolean v0, Lcom/syu/util/WindowUtil;->visible:Z

    if-nez v0, :cond_5

    .line 47
    if-eqz p0, :cond_2

    .line 48
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :cond_2
    invoke-static {}, Lcom/android/launcher4/Launcher;->getLauncher()Lcom/android/launcher4/Launcher;

    move-result-object v0

    sget-object v1, Lcom/syu/util/WindowUtil;->AppPackageNmae:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/syu/util/WindowUtil;->intent:Landroid/content/Intent;

    .line 58
    sget-object v0, Lcom/syu/util/WindowUtil;->AppPackageNmae:Ljava/lang/String;

    const-string v1, "com.autonavi.amapauto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    :try_start_0
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->addGaoDeCoverView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_1
    const-string v0, "sys.lsec.force_pip"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    sget-object v1, Lcom/syu/util/WindowUtil;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 74
    :goto_2
    const-string v0, "WindowUtil --- \u6253\u5f00\u7a97\u53e3\u5df2\u6267\u884c"

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    sput-boolean v0, Lcom/syu/util/WindowUtil;->visible:Z

    goto :goto_0

    .line 67
    :cond_3
    sget-object v0, Lcom/syu/util/WindowUtil;->AppPackageNmae:Ljava/lang/String;

    const-string v1, "com.syu.camera360"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    sget-object v0, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.syu.camera360.show"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    :cond_4
    const-string v0, "sys.lsec.force_pip"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    sget-object v1, Lcom/syu/util/WindowUtil;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 77
    :cond_5
    const-string v0, "WindowUtil --- \u6253\u5f00\u7a97\u53e3\u88ab\u8fc7\u6ee4"

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    goto :goto_1
.end method
