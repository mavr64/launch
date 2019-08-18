.class public Lcom/android/launcher4/MyAutoMapReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MyAutoMapReceiver.java"


# static fields
.field public static mCameraDis:I

.field public static mCurDis_All:I

.field public static mCurDis_Remain:I

.field public static mCurRoadName:Ljava/lang/String;

.field public static mCurSpeed:I

.field public static mCurState:I

.field public static mNextRoadName:Ljava/lang/String;

.field public static mREMAINTime:I

.field public static mTotalTime:I

.field public static mTurnIcon:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 23
    sput v0, Lcom/android/launcher4/MyAutoMapReceiver;->mCameraDis:I

    .line 28
    sput v0, Lcom/android/launcher4/MyAutoMapReceiver;->mCurState:I

    .line 29
    sput v1, Lcom/android/launcher4/MyAutoMapReceiver;->mTotalTime:I

    .line 30
    sput v1, Lcom/android/launcher4/MyAutoMapReceiver;->mREMAINTime:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    if-eqz p2, :cond_5

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 37
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 38
    .local v6, "am":Landroid/app/ActivityManager;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 40
    .local v8, "cn":Landroid/content/ComponentName;
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 41
    .local v10, "number":I
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.android.launcher"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 42
    .local v9, "launcherPackageName":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    const/4 v0, -0x1

    sput v0, Lcom/android/launcher4/MyAutoMapReceiver;->mCameraDis:I

    .line 44
    const/4 v0, -0x1

    sput v0, Lcom/android/launcher4/MyAutoMapReceiver;->mTurnIcon:I

    .line 45
    const/4 v0, -0x1

    sput v0, Lcom/android/launcher4/MyAutoMapReceiver;->mCurDis_Remain:I

    .line 46
    const/4 v0, -0x1

    sput v0, Lcom/android/launcher4/MyAutoMapReceiver;->mCurDis_All:I

    .line 47
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher4/MyAutoMapReceiver;->mCurSpeed:I

    .line 48
    const/4 v0, -0x1

    sput v0, Lcom/android/launcher4/MyAutoMapReceiver;->mCurState:I

    .line 49
    const/4 v0, -0x1

    sput v0, Lcom/android/launcher4/MyAutoMapReceiver;->mTotalTime:I

    .line 50
    const/4 v0, -0x1

    sput v0, Lcom/android/launcher4/MyAutoMapReceiver;->mREMAINTime:I

    .line 99
    .end local v6    # "am":Landroid/app/ActivityManager;
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v8    # "cn":Landroid/content/ComponentName;
    .end local v9    # "launcherPackageName":Ljava/lang/String;
    .end local v10    # "number":I
    :cond_0
    :goto_0
    return-void

    .line 53
    .restart local v6    # "am":Landroid/app/ActivityManager;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "cn":Landroid/content/ComponentName;
    .restart local v9    # "launcherPackageName":Ljava/lang/String;
    .restart local v10    # "number":I
    :cond_1
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget v0, Lcom/syu/car/CarStates;->mAccState:I

    if-eqz v0, :cond_0

    if-eqz v7, :cond_0

    .line 55
    const-string v0, "KEY_TYPE"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_3

    .line 56
    const-string v0, "CUR_ROAD_NAME"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 57
    const-string v0, "CUR_ROAD_NAME"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 58
    const-string v0, "CUR_ROAD_NAME"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher4/MyAutoMapReceiver;->mCurRoadName:Ljava/lang/String;

    .line 61
    :cond_2
    const-string v0, "NEXT_ROAD_NAME"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher4/MyAutoMapReceiver;->mNextRoadName:Ljava/lang/String;

    .line 62
    const-string v0, "CAMERA_DIST"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/launcher4/MyAutoMapReceiver;->mCameraDis:I

    .line 63
    const-string v0, "ICON"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/launcher4/MyAutoMapReceiver;->mTurnIcon:I

    .line 64
    const-string v0, "SEG_REMAIN_DIS"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/launcher4/MyAutoMapReceiver;->mCurDis_Remain:I

    .line 65
    const-string v0, "ROUTE_ALL_DIS"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/launcher4/MyAutoMapReceiver;->mCurDis_All:I

    .line 66
    const-string v0, "CUR_SPEED"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/launcher4/MyAutoMapReceiver;->mCurSpeed:I

    .line 67
    const-string v0, "ROUTE_ALL_TIME"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/launcher4/MyAutoMapReceiver;->mTotalTime:I

    .line 68
    const-string v0, "ROUTE_REMAIN_TIME"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/launcher4/MyAutoMapReceiver;->mREMAINTime:I

    .line 70
    sget-object v0, Lcom/android/launcher4/MyAutoMapReceiver;->mCurRoadName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mCurRoadNameView11111:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher4/MyAutoMapReceiver;->mCurRoadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 73
    sget-object v0, Lcom/fyt/car/LauncherNotify;->NOTIFIER_NAVIVIEW:Lcom/fyt/car/DataNotifier;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Lcom/android/launcher4/MyAutoMapReceiver;->mCurDis_Remain:I

    aput v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/android/launcher4/MyAutoMapReceiver;->mCurState:I

    aput v3, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v11, Lcom/android/launcher4/MyAutoMapReceiver;->mCurRoadName:Ljava/lang/String;

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/fyt/car/DataNotifier;->set([I[J[F[Ljava/lang/String;[B)V

    .line 80
    :cond_3
    const-string v0, "KEY_TYPE"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2723

    if-ne v0, v1, :cond_4

    .line 81
    const-string v0, "EXTRA_STATE"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/launcher4/MyAutoMapReceiver;->mCurState:I

    .line 82
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 83
    sget-object v0, Lcom/fyt/car/LauncherNotify;->NOTIFIER_NAVISTATE:Lcom/fyt/car/DataNotifier;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Lcom/android/launcher4/MyAutoMapReceiver;->mCurDis_Remain:I

    aput v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/android/launcher4/MyAutoMapReceiver;->mCurState:I

    aput v3, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v11, Lcom/android/launcher4/MyAutoMapReceiver;->mCurRoadName:Ljava/lang/String;

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/fyt/car/DataNotifier;->set([I[J[F[Ljava/lang/String;[B)V

    .line 86
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mCurDis_Remain: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/android/launcher4/MyAutoMapReceiver;->mCurDis_Remain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCurState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/launcher4/MyAutoMapReceiver;->mCurState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 87
    const-string v0, "xx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCurDis_Remain: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/android/launcher4/MyAutoMapReceiver;->mCurDis_Remain:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/launcher4/MyAutoMapReceiver;->mCurState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-static {v0}, Lcom/syu/widget/music/Widget;->update(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 97
    .end local v6    # "am":Landroid/app/ActivityManager;
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v8    # "cn":Landroid/content/ComponentName;
    .end local v9    # "launcherPackageName":Ljava/lang/String;
    .end local v10    # "number":I
    :cond_5
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher4/MyAutoMapReceiver;->mCurSpeed:I

    goto/16 :goto_0
.end method
