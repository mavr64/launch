.class Lcom/android/launcher4/Launcher$48;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Limagecoverflow/CoverFlowView$CoverFlowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Limagecoverflow/CoverFlowView$CoverFlowListener",
        "<",
        "Limagecoverflow/MyCoverFlowAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$48;->this$0:Lcom/android/launcher4/Launcher;

    .line 3437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageOnTop(Limagecoverflow/CoverFlowView;IFFFF)V
    .locals 0
    .param p2, "position"    # I
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "right"    # F
    .param p6, "bottom"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Limagecoverflow/CoverFlowView",
            "<",
            "Limagecoverflow/MyCoverFlowAdapter;",
            ">;IFFFF)V"
        }
    .end annotation

    .prologue
    .line 3444
    .local p1, "view":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<Limagecoverflow/MyCoverFlowAdapter;>;"
    return-void
.end method

.method public invalidationCompleted()V
    .locals 0

    .prologue
    .line 3519
    return-void
.end method

.method public topImageClicked(Limagecoverflow/CoverFlowView;I)V
    .locals 4
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Limagecoverflow/CoverFlowView",
            "<",
            "Limagecoverflow/MyCoverFlowAdapter;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "view":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<Limagecoverflow/MyCoverFlowAdapter;>;"
    const/4 v3, 0x0

    .line 3451
    packed-switch p2, :pswitch_data_0

    .line 3514
    :goto_0
    return-void

    .line 3453
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher4/Launcher$48;->this$0:Lcom/android/launcher4/Launcher;

    .line 3454
    sget-object v1, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const-string v2, "com.syu.radio"

    .line 3453
    invoke-static {v1, v2}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3457
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher4/Launcher$48;->this$0:Lcom/android/launcher4/Launcher;

    .line 3458
    sget-object v1, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const-string v2, "com.syu.bt"

    .line 3457
    invoke-static {v1, v2}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3461
    :pswitch_2
    sget-boolean v0, Lshare/Config;->EXISTAMPAUTO:Z

    if-eqz v0, :cond_0

    .line 3463
    const-string v0, "persist.sys.navi.packagename"

    .line 3464
    const-string v1, "com.autonavi.amapauto"

    .line 3462
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3466
    iget-object v0, p0, Lcom/android/launcher4/Launcher$48;->this$0:Lcom/android/launcher4/Launcher;

    .line 3467
    sget-object v1, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 3468
    const-string v2, "com.autonavi.amapauto"

    .line 3466
    invoke-static {v1, v2}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3473
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Launcher$48;->this$0:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/car/CarStates;->getCar(Landroid/content/Context;)Lcom/syu/car/CarStates;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/car/CarStates;->mTools:Lcom/syu/remote/RemoteTools;

    .line 3476
    const/16 v1, 0x18

    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 3477
    aput v3, v2, v3

    .line 3474
    invoke-virtual {v0, v3, v1, v2}, Lcom/syu/remote/RemoteTools;->sendInt(II[I)V

    goto :goto_0

    .line 3482
    :pswitch_3
    iget-object v0, p0, Lcom/android/launcher4/Launcher$48;->this$0:Lcom/android/launcher4/Launcher;

    .line 3483
    sget-object v1, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const-string v2, "com.syu.music"

    .line 3482
    invoke-static {v1, v2}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3486
    :pswitch_4
    iget-object v0, p0, Lcom/android/launcher4/Launcher$48;->this$0:Lcom/android/launcher4/Launcher;

    .line 3487
    sget-object v1, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const-string v2, "com.syu.settings"

    .line 3486
    invoke-static {v1, v2}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3490
    :pswitch_5
    iget-object v0, p0, Lcom/android/launcher4/Launcher$48;->this$0:Lcom/android/launcher4/Launcher;

    .line 3491
    sget-object v1, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const-string v2, "com.syu.video"

    .line 3490
    invoke-static {v1, v2}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3494
    :pswitch_6
    iget-object v0, p0, Lcom/android/launcher4/Launcher$48;->this$0:Lcom/android/launcher4/Launcher;

    .line 3495
    sget-object v1, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const-string v2, "com.syu.car"

    .line 3494
    invoke-static {v1, v2}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3498
    :pswitch_7
    iget-object v0, p0, Lcom/android/launcher4/Launcher$48;->this$0:Lcom/android/launcher4/Launcher;

    .line 3499
    sget-object v1, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const-string v2, "com.syu.dvr"

    .line 3498
    invoke-static {v1, v2}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3502
    :pswitch_8
    iget-object v0, p0, Lcom/android/launcher4/Launcher$48;->this$0:Lcom/android/launcher4/Launcher;

    .line 3503
    sget-object v1, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const-string v2, "com.syu.voice"

    .line 3502
    invoke-static {v1, v2}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3506
    :pswitch_9
    iget-object v0, p0, Lcom/android/launcher4/Launcher$48;->this$0:Lcom/android/launcher4/Launcher;

    .line 3507
    sget-object v1, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const-string v2, "net.easyconn"

    .line 3506
    invoke-static {v1, v2}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3451
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
