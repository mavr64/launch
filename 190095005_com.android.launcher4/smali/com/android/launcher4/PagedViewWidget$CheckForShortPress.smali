.class Lcom/android/launcher4/PagedViewWidget$CheckForShortPress;
.super Ljava/lang/Object;
.source "PagedViewWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/PagedViewWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForShortPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/PagedViewWidget;


# direct methods
.method constructor <init>(Lcom/android/launcher4/PagedViewWidget;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/launcher4/PagedViewWidget$CheckForShortPress;->this$0:Lcom/android/launcher4/PagedViewWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/android/launcher4/PagedViewWidget;->sShortpressTarget:Lcom/android/launcher4/PagedViewWidget;

    if-eqz v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/PagedViewWidget$CheckForShortPress;->this$0:Lcom/android/launcher4/PagedViewWidget;

    iget-object v0, v0, Lcom/android/launcher4/PagedViewWidget;->mShortPressListener:Lcom/android/launcher4/PagedViewWidget$ShortPressListener;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/launcher4/PagedViewWidget$CheckForShortPress;->this$0:Lcom/android/launcher4/PagedViewWidget;

    iget-object v0, v0, Lcom/android/launcher4/PagedViewWidget;->mShortPressListener:Lcom/android/launcher4/PagedViewWidget$ShortPressListener;

    iget-object v1, p0, Lcom/android/launcher4/PagedViewWidget$CheckForShortPress;->this$0:Lcom/android/launcher4/PagedViewWidget;

    invoke-interface {v0, v1}, Lcom/android/launcher4/PagedViewWidget$ShortPressListener;->onShortPress(Landroid/view/View;)V

    .line 198
    iget-object v0, p0, Lcom/android/launcher4/PagedViewWidget$CheckForShortPress;->this$0:Lcom/android/launcher4/PagedViewWidget;

    sput-object v0, Lcom/android/launcher4/PagedViewWidget;->sShortpressTarget:Lcom/android/launcher4/PagedViewWidget;

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/launcher4/PagedViewWidget$CheckForShortPress;->this$0:Lcom/android/launcher4/PagedViewWidget;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher4/PagedViewWidget;->mShortPressTriggered:Z

    goto :goto_0
.end method
