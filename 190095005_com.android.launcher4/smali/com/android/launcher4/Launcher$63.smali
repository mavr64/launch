.class Lcom/android/launcher4/Launcher$63;
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$63;->this$0:Lcom/android/launcher4/Launcher;

    .line 4005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4010
    invoke-static {}, Lcom/android/launcher4/Launcher;->access$97()Lcn/kuwo/autosdk/api/KWAPI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4011
    iget-object v0, p0, Lcom/android/launcher4/Launcher$63;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$98(Lcom/android/launcher4/Launcher;)V

    .line 4012
    invoke-static {}, Lcom/android/launcher4/Launcher;->access$97()Lcn/kuwo/autosdk/api/KWAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/Launcher$63;->this$0:Lcom/android/launcher4/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 4013
    sget-object v2, Lcn/kuwo/autosdk/api/PlayState;->STATE_NEXT:Lcn/kuwo/autosdk/api/PlayState;

    .line 4012
    invoke-virtual {v0, v1, v2}, Lcn/kuwo/autosdk/api/KWAPI;->setPlayState(Landroid/content/Context;Lcn/kuwo/autosdk/api/PlayState;)V

    .line 4016
    :cond_0
    return-void
.end method
