.class public Lcom/android/launcher4/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# static fields
.field public static appWidget_Host_Id:I

.field public static bForegin:Ljava/lang/String;

.field public static bHideUniCar:Ljava/lang/String;

.field public static bHideUniCar_New:Ljava/lang/String;

.field public static frontview_endble:Ljava/lang/Boolean;

.field public static handler:Landroid/os/Handler;

.field public static is3g:Z

.field public static isHaveDvd:Z

.field public static sApp:Lcom/android/launcher4/LauncherApplication;

.field public static shadow_Large_Radius:F

.field public static shadow_Small_Radius:F

.field public static typeface:Landroid/graphics/Typeface;


# instance fields
.field private btn_floatView:Landroid/widget/TextView;

.field private params:Landroid/view/WindowManager$LayoutParams;

.field private wm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher4/LauncherApplication;->handler:Landroid/os/Handler;

    .line 48
    sput-boolean v2, Lcom/android/launcher4/LauncherApplication;->is3g:Z

    .line 49
    sput v3, Lcom/android/launcher4/LauncherApplication;->shadow_Large_Radius:F

    .line 50
    sput v3, Lcom/android/launcher4/LauncherApplication;->shadow_Small_Radius:F

    .line 51
    sput v2, Lcom/android/launcher4/LauncherApplication;->appWidget_Host_Id:I

    .line 56
    sput-boolean v2, Lcom/android/launcher4/LauncherApplication;->isHaveDvd:Z

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static appEnable(Ljava/lang/String;I)V
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "enable"    # I

    .prologue
    const/4 v0, 0x1

    .line 167
    if-nez p1, :cond_0

    const/4 v0, 0x2

    .line 170
    .local v0, "state":I
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 172
    sget-object v1, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 173
    const/4 v2, 0x1

    .line 172
    invoke-virtual {v1, p0, v0, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initGaoDeCoverView()V
    .locals 3

    .prologue
    const/16 v2, 0x2d

    .line 214
    new-instance v0, Landroid/widget/TextView;

    sget-object v1, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher4/LauncherApplication;->btn_floatView:Landroid/widget/TextView;

    .line 215
    iget-object v0, p0, Lcom/android/launcher4/LauncherApplication;->btn_floatView:Landroid/widget/TextView;

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 217
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/android/launcher4/LauncherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/launcher4/LauncherApplication;->wm:Landroid/view/WindowManager;

    .line 218
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/LauncherApplication;->params:Landroid/view/WindowManager$LayoutParams;

    .line 221
    iget-object v0, p0, Lcom/android/launcher4/LauncherApplication;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 227
    iget-object v0, p0, Lcom/android/launcher4/LauncherApplication;->params:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 230
    iget-object v0, p0, Lcom/android/launcher4/LauncherApplication;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 239
    iget-object v0, p0, Lcom/android/launcher4/LauncherApplication;->params:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 240
    iget-object v0, p0, Lcom/android/launcher4/LauncherApplication;->params:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 241
    iget-object v0, p0, Lcom/android/launcher4/LauncherApplication;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x1c2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 242
    iget-object v0, p0, Lcom/android/launcher4/LauncherApplication;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, -0xe6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 243
    return-void
.end method

.method private loadCarLogo()V
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/launcher4/LauncherApplication$2;

    invoke-direct {v1, p0}, Lcom/android/launcher4/LauncherApplication$2;-><init>(Lcom/android/launcher4/LauncherApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 204
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    .line 205
    return-void
.end method


# virtual methods
.method public addGaoDeCoverView()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/launcher4/LauncherApplication;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/launcher4/LauncherApplication;->btn_floatView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher4/LauncherApplication;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    return-void
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 64
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 65
    const-string v2, "ro.client.foreign"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/launcher4/LauncherApplication;->bForegin:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/android/launcher4/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher4/CrashHandler;->getInstance(Landroid/content/Context;)Lcom/android/launcher4/CrashHandler;

    .line 67
    sput-object p0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    .line 68
    const/high16 v2, 0x7f060000

    invoke-static {p0, v2}, Lcom/syu/util/CustomIcons;->loadIcons(Landroid/content/Context;I)V

    .line 70
    invoke-static {p0}, Lcom/syu/utils/W3Utils;->initialize(Landroid/content/Context;)Lcom/syu/utils/W3Utils;

    .line 72
    invoke-static {p0}, Lcom/syu/util/Print;->initPrint(Landroid/content/Context;)V

    .line 73
    invoke-static {p0}, Lcom/android/launcher4/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 75
    const-string v2, "sys.lsec.pip_rect"

    const-string v3, "450 66 995 386"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/android/launcher4/LauncherApplication;->initGaoDeCoverView()V

    .line 78
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    .line 79
    invoke-static {p0}, Lcom/syu/car/CarStates;->getCar(Landroid/content/Context;)Lcom/syu/car/CarStates;

    .line 104
    invoke-virtual {p0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    sget-object v2, Lcom/android/launcher4/LauncherApplication;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/android/launcher4/LauncherApplication$1;

    invoke-direct {v3, p0}, Lcom/android/launcher4/LauncherApplication$1;-><init>(Lcom/android/launcher4/LauncherApplication;)V

    .line 123
    const-wide/16 v4, 0x12c

    .line 105
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    :try_start_0
    const-string v2, "sys.fyt.subplatform"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "str":Ljava/lang/String;
    const-string v2, "ro.client.foreign"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "str1":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher4/LauncherApplication;->is3g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "str1":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 140
    const v3, 0x7f0b0026

    .line 139
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x400

    sput v2, Lcom/android/launcher4/LauncherApplication;->appWidget_Host_Id:I

    .line 142
    invoke-virtual {p0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    const/high16 v2, 0x40800000    # 4.0f

    sput v2, Lcom/android/launcher4/LauncherApplication;->shadow_Large_Radius:F

    .line 144
    const/high16 v2, 0x3fe00000    # 1.75f

    sput v2, Lcom/android/launcher4/LauncherApplication;->shadow_Small_Radius:F

    .line 149
    :cond_2
    const-string v2, "persist.fyt.zh_frontview_enable"

    .line 148
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/launcher4/LauncherApplication;->frontview_endble:Ljava/lang/Boolean;

    .line 150
    sget-object v2, Lcom/android/launcher4/LauncherApplication;->frontview_endble:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    const-string v2, "com.syu.frontvideo"

    invoke-static {v2, v7}, Lcom/android/launcher4/LauncherApplication;->appEnable(Ljava/lang/String;I)V

    .line 152
    const-string v2, "com.syu.av"

    invoke-static {v2, v6}, Lcom/android/launcher4/LauncherApplication;->appEnable(Ljava/lang/String;I)V

    .line 158
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher4/LauncherApplication;->loadCarLogo()V

    .line 160
    invoke-virtual {p0}, Lcom/android/launcher4/LauncherApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/MYingHeiPRC-W5.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/android/launcher4/LauncherApplication;->typeface:Landroid/graphics/Typeface;

    .line 162
    invoke-static {}, Lcom/syu/util/WindowUtil;->initDefaultApp()V

    .line 163
    return-void

    .line 154
    :cond_3
    const-string v2, "com.syu.frontvideo"

    invoke-static {v2, v6}, Lcom/android/launcher4/LauncherApplication;->appEnable(Ljava/lang/String;I)V

    .line 155
    const-string v2, "com.syu.av"

    invoke-static {v2, v7}, Lcom/android/launcher4/LauncherApplication;->appEnable(Ljava/lang/String;I)V

    goto :goto_1

    .line 135
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 181
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->onTerminate()V

    .line 182
    return-void
.end method

.method public removeGaoDeCoverView()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/launcher4/LauncherApplication;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/launcher4/LauncherApplication;->btn_floatView:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 212
    return-void
.end method
