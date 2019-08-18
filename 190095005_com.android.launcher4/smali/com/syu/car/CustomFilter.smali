.class public Lcom/syu/car/CustomFilter;
.super Lcom/android/launcher4/AppFilter;
.source "CustomFilter.java"

# interfaces
.implements Lcom/syu/remote/Callback$OnRefreshLisenter;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/car/CustomFilter$RefreshCallback;
    }
.end annotation


# static fields
.field public static mHideApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final mIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCallback:Lcom/syu/car/CustomFilter$RefreshCallback;

.field mHandler:Landroid/os/Handler;

.field workLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/syu/car/CustomFilter;->mHideApps:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/syu/car/CustomFilter;->mIcons:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/syu/car/CustomFilter;->mHideApps:Ljava/util/HashMap;

    .line 47
    sget-object v0, Lcom/syu/car/CustomFilter;->mHideApps:Ljava/util/HashMap;

    const-string v1, "com.android.calendar"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/syu/car/CustomFilter;->mHideApps:Ljava/util/HashMap;

    const-string v1, "com.android.inputmethod.latin"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/syu/car/CustomFilter;->mHideApps:Ljava/util/HashMap;

    const-string v1, "com.syu.exdvr"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/syu/car/CustomFilter;->mHideApps:Ljava/util/HashMap;

    const-string v1, "com.syu.dvr"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/syu/car/CustomFilter;->mHideApps:Ljava/util/HashMap;

    const-string v1, "com.syu.ipod"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/syu/car/CustomFilter;->mHideApps:Ljava/util/HashMap;

    const-string v1, "com.syu.dvd"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/syu/car/CustomFilter;->mHideApps:Ljava/util/HashMap;

    const-string v1, "com.syu.cdc"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/syu/car/CustomFilter;->mHideApps:Ljava/util/HashMap;

    const-string v1, "com.syu.canbus"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/syu/car/CustomFilter;->mHideApps:Ljava/util/HashMap;

    const-string v1, "com.syu.calibration"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/syu/car/CustomFilter;->mHideApps:Ljava/util/HashMap;

    const-string v1, "com.syu.tv"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/syu/car/CustomFilter;->mHideApps:Ljava/util/HashMap;

    const-string v1, "com.android.settings"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/syu/car/CustomFilter;->mHideApps:Ljava/util/HashMap;

    const-string v1, "com.syu.radio"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/syu/car/CustomFilter;->mHideApps:Ljava/util/HashMap;

    const-string v1, "com.syu.bt"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/syu/car/CustomFilter;->mHideApps:Ljava/util/HashMap;

    const-string v1, "com.syu.allapps"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/android/launcher4/AppFilter;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/syu/car/CustomFilter;->workLooper:Landroid/os/Looper;

    .line 66
    iput-object v0, p0, Lcom/syu/car/CustomFilter;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method public static loadCustomIcons(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # I

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getAppTitle(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p1, "app"    # Landroid/content/ComponentName;

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRefresh(I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    packed-switch p1, :pswitch_data_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 90
    :pswitch_0
    invoke-static {p2, v5}, Lcom/syu/util/JTools;->check([II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p4, v5}, Lcom/syu/util/JTools;->check([Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    aget-object v2, p4, v4

    .line 93
    .local v2, "pkg":Ljava/lang/String;
    const/4 v0, 0x0

    .line 94
    .local v0, "changed":Z
    sget-object v3, Lcom/syu/car/CustomFilter;->mHideApps:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 95
    .local v1, "has":Z
    aget v3, p2, v4

    if-ne v3, v5, :cond_2

    if-eqz v1, :cond_2

    .line 96
    sget-object v3, Lcom/syu/car/CustomFilter;->mHideApps:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const/4 v0, 0x1

    .line 103
    :cond_1
    :goto_1
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/syu/car/CustomFilter;->mCallback:Lcom/syu/car/CustomFilter$RefreshCallback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/syu/car/CustomFilter;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/syu/car/CustomFilter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    iget-object v3, p0, Lcom/syu/car/CustomFilter;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 98
    :cond_2
    aget v3, p2, v4

    if-eq v3, v5, :cond_1

    if-nez v1, :cond_1

    .line 99
    sget-object v3, Lcom/syu/car/CustomFilter;->mHideApps:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const/4 v0, 0x1

    goto :goto_1

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
    .end packed-switch
.end method

.method public register()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 118
    iget-object v2, p0, Lcom/syu/car/CustomFilter;->workLooper:Landroid/os/Looper;

    if-nez v2, :cond_0

    .line 119
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "app_visibility_handler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "work":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 121
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/syu/car/CustomFilter;->workLooper:Landroid/os/Looper;

    .line 123
    .end local v1    # "work":Landroid/os/HandlerThread;
    :cond_0
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/syu/car/CustomFilter;->workLooper:Landroid/os/Looper;

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/syu/car/CustomFilter;->mHandler:Landroid/os/Handler;

    .line 124
    sget-object v2, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-static {v2}, Lcom/syu/car/CarStates;->getCar(Landroid/content/Context;)Lcom/syu/car/CarStates;

    move-result-object v0

    .line 125
    .local v0, "mStates":Lcom/syu/car/CarStates;
    invoke-virtual {v0}, Lcom/syu/car/CarStates;->getTools()Lcom/syu/remote/RemoteTools;

    move-result-object v2

    .line 126
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/16 v4, 0x27

    aput v4, v3, v5

    .line 125
    invoke-virtual {v2, v5, p0, v3}, Lcom/syu/remote/RemoteTools;->addRefreshLisenter(ILcom/syu/remote/Callback$OnRefreshLisenter;[I)V

    .line 127
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/syu/car/CustomFilter;->mCallback:Lcom/syu/car/CustomFilter$RefreshCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/car/CustomFilter;->mCallback:Lcom/syu/car/CustomFilter$RefreshCallback;

    invoke-interface {v0}, Lcom/syu/car/CustomFilter$RefreshCallback;->onRefresh()V

    .line 115
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/syu/car/CustomFilter$RefreshCallback;)V
    .locals 0
    .param p1, "mCallback"    # Lcom/syu/car/CustomFilter$RefreshCallback;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/syu/car/CustomFilter;->mCallback:Lcom/syu/car/CustomFilter$RefreshCallback;

    .line 143
    return-void
.end method

.method public shouldShowApp(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "app"    # Landroid/content/ComponentName;

    .prologue
    .line 75
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 81
    :cond_0
    :goto_0
    return v1

    .line 76
    :cond_1
    const/4 v1, 0x1

    .line 77
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "pkg":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v2, Lcom/syu/car/CustomFilter;->mHideApps:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    sget-object v2, Lcom/syu/car/CustomFilter;->mHideApps:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public unregister()V
    .locals 3

    .prologue
    .line 130
    iget-object v1, p0, Lcom/syu/car/CustomFilter;->workLooper:Landroid/os/Looper;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/syu/car/CustomFilter;->workLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 132
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/syu/car/CustomFilter;->mHandler:Landroid/os/Handler;

    .line 134
    :cond_0
    sget-object v1, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-static {v1}, Lcom/syu/car/CarStates;->getCar(Landroid/content/Context;)Lcom/syu/car/CarStates;

    move-result-object v0

    .line 135
    .local v0, "mStates":Lcom/syu/car/CarStates;
    invoke-virtual {v0}, Lcom/syu/car/CarStates;->getTools()Lcom/syu/remote/RemoteTools;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/syu/remote/RemoteTools;->removeRefreshLisenter(ILcom/syu/remote/Callback$OnRefreshLisenter;)V

    .line 136
    return-void
.end method
