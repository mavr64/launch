.class Lcom/android/launcher4/Hotseat$2;
.super Ljava/lang/Object;
.source "Hotseat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Hotseat;->addDefultIcon(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Hotseat;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Hotseat;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Hotseat$2;->this$0:Lcom/android/launcher4/Hotseat;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/launcher4/Hotseat$2;->this$0:Lcom/android/launcher4/Hotseat;

    invoke-static {v0}, Lcom/android/launcher4/Hotseat;->access$0(Lcom/android/launcher4/Hotseat;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/launcher4/Hotseat$2;->this$0:Lcom/android/launcher4/Hotseat;

    invoke-static {v0}, Lcom/android/launcher4/Hotseat;->access$0(Lcom/android/launcher4/Hotseat;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher4/Launcher;->onClickAllAppsButton(Landroid/view/View;)V

    .line 274
    :cond_0
    return-void
.end method
