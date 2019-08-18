.class Lcom/syu/widget/music/Widget$1;
.super Ljava/lang/Object;
.source "Widget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/widget/music/Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/widget/music/Widget;


# direct methods
.method constructor <init>(Lcom/syu/widget/music/Widget;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/widget/music/Widget$1;->this$0:Lcom/syu/widget/music/Widget;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    iget-object v1, p0, Lcom/syu/widget/music/Widget$1;->this$0:Lcom/syu/widget/music/Widget;

    invoke-virtual {v1}, Lcom/syu/widget/music/Widget;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 57
    .local v0, "views":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/syu/widget/music/Widget$1;->this$0:Lcom/syu/widget/music/Widget;

    invoke-virtual {v1, v0}, Lcom/syu/widget/music/Widget;->update(Landroid/widget/RemoteViews;)V

    .line 58
    :cond_0
    return-void
.end method
