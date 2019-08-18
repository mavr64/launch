.class public Lcom/syu/util/ActivityStartUtils;
.super Ljava/lang/Object;
.source "ActivityStartUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static startActivity(Landroid/content/Context;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 45
    const/high16 v5, 0x10000000

    :try_start_0
    invoke-virtual {p2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    if-eqz p1, :cond_0

    .line 48
    const-string v5, "com.android.launcher4.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v2, v3

    .line 49
    .local v2, "useLaunchAnimation":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 51
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 50
    invoke-static {p1, v5, v6, v7, v8}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 53
    .local v1, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p0, p2, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 62
    .end local v1    # "opts":Landroid/app/ActivityOptions;
    .end local v2    # "useLaunchAnimation":Z
    :goto_1
    return v3

    :cond_0
    move v2, v4

    .line 46
    goto :goto_0

    .line 55
    .restart local v2    # "useLaunchAnimation":Z
    :cond_1
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 58
    .end local v2    # "useLaunchAnimation":Z
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "2131492876---startActivity"

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v3, v4

    .line 62
    goto :goto_1
.end method

.method public static startActivitySafely(Landroid/content/Context;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 20
    if-nez p2, :cond_1

    .line 21
    const-string v3, "2131492876intent= null"

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v1, v2

    .line 39
    :cond_0
    :goto_0
    return v1

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 28
    .local v1, "success":Z
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/syu/util/ActivityStartUtils;->startActivity(Landroid/content/Context;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    const-string v3, "2131492876:success"

    .line 31
    const/4 v4, 0x0

    .line 30
    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 31
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "2131492876-ActivityNotFound"

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 36
    invoke-static {}, Lcom/syu/util/JLog;->getInstance()Lcom/syu/util/JLog;

    move-result-object v2

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to launch. tag="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {v2, v3}, Lcom/syu/util/JLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static startNavi(Landroid/content/Context;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    const v10, 0x7f0c000c

    const/4 v9, 0x0

    .line 66
    new-instance v3, Lcom/syu/ipc/RemoteModuleProxy;

    invoke-direct {v3}, Lcom/syu/ipc/RemoteModuleProxy;-><init>()V

    .line 67
    .local v3, "proxy":Lcom/syu/ipc/RemoteModuleProxy;
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    .line 70
    .local v0, "app":Lcom/android/launcher4/LauncherApplication;
    :try_start_0
    invoke-virtual {v3}, Lcom/syu/ipc/RemoteModuleProxy;->getRemoteModule()Lcom/syu/ipc/IRemoteModule;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 71
    const/4 v8, 0x0

    .line 70
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/syu/ipc/IRemoteModule;->get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;

    move-result-object v2

    .line 72
    .local v2, "pkg":Lcom/syu/ipc/ModuleObject;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    if-nez v4, :cond_1

    .line 75
    :cond_0
    const v4, 0x7f0c000c

    .line 76
    const/4 v5, 0x0

    .line 75
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 76
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v2    # "pkg":Lcom/syu/ipc/ModuleObject;
    :cond_1
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {p0, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 80
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 81
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
