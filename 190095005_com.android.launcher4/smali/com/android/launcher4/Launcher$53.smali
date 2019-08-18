.class Lcom/android/launcher4/Launcher$53;
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$53;->this$0:Lcom/android/launcher4/Launcher;

    .line 3854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3859
    sget v0, Lcom/syu/car/CarStates;->mAppID:I

    if-ne v0, v1, :cond_0

    .line 3860
    iget-object v0, p0, Lcom/android/launcher4/Launcher$53;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->tools:Lcom/syu/remote/RemoteTools;

    if-eqz v0, :cond_0

    .line 3861
    iget-object v0, p0, Lcom/android/launcher4/Launcher$53;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->tools:Lcom/syu/remote/RemoteTools;

    .line 3862
    new-array v1, v1, [I

    aput v2, v1, v2

    .line 3861
    invoke-virtual {v0, v2, v2, v1}, Lcom/syu/remote/RemoteTools;->sendInt(II[I)V

    .line 3864
    :cond_0
    return-void
.end method
