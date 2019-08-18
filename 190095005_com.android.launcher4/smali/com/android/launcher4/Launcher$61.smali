.class Lcom/android/launcher4/Launcher$61;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->bindOnclickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$61;->this$0:Lcom/android/launcher4/Launcher;

    .line 3972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3977
    invoke-static {}, Lcom/android/launcher4/Launcher;->access$97()Lcn/kuwo/autosdk/api/KWAPI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3978
    iget-object v0, p0, Lcom/android/launcher4/Launcher$61;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$98(Lcom/android/launcher4/Launcher;)V

    .line 3979
    iget-object v0, p0, Lcom/android/launcher4/Launcher$61;->this$0:Lcom/android/launcher4/Launcher;

    iget-boolean v0, v0, Lcom/android/launcher4/Launcher;->mKwPlayState:Z

    if-eqz v0, :cond_1

    .line 3980
    invoke-static {}, Lcom/android/launcher4/Launcher;->access$97()Lcn/kuwo/autosdk/api/KWAPI;

    move-result-object v0

    sget-object v1, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    sget-object v2, Lcn/kuwo/autosdk/api/PlayState;->STATE_PAUSE:Lcn/kuwo/autosdk/api/PlayState;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/autosdk/api/KWAPI;->setPlayState(Landroid/content/Context;Lcn/kuwo/autosdk/api/PlayState;)V

    .line 3986
    :cond_0
    :goto_0
    return-void

    .line 3982
    :cond_1
    invoke-static {}, Lcom/android/launcher4/Launcher;->access$97()Lcn/kuwo/autosdk/api/KWAPI;

    move-result-object v0

    sget-object v1, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    sget-object v2, Lcn/kuwo/autosdk/api/PlayState;->STATE_PLAY:Lcn/kuwo/autosdk/api/PlayState;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/autosdk/api/KWAPI;->setPlayState(Landroid/content/Context;Lcn/kuwo/autosdk/api/PlayState;)V

    goto :goto_0
.end method
