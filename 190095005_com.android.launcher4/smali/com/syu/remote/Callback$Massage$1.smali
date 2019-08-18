.class Lcom/syu/remote/Callback$Massage$1;
.super Ljava/lang/Object;
.source "Callback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/remote/Callback$Massage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/syu/remote/Callback$Massage;


# direct methods
.method constructor <init>(Lcom/syu/remote/Callback$Massage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/remote/Callback$Massage$1;->this$1:Lcom/syu/remote/Callback$Massage;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 96
    iget-object v1, p0, Lcom/syu/remote/Callback$Massage$1;->this$1:Lcom/syu/remote/Callback$Massage;

    invoke-static {v1}, Lcom/syu/remote/Callback$Massage;->access$0(Lcom/syu/remote/Callback$Massage;)Lcom/syu/remote/Callback;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/remote/Callback;->mLisenters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    return-void

    .line 96
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/remote/Callback$Lisenter;

    .line 97
    .local v0, "lisenter":Lcom/syu/remote/Callback$Lisenter;
    iget v2, v0, Lcom/syu/remote/Callback$Lisenter;->code:I

    iget-object v3, p0, Lcom/syu/remote/Callback$Massage$1;->this$1:Lcom/syu/remote/Callback$Massage;

    iget v3, v3, Lcom/syu/remote/Callback$Massage;->code:I

    if-ne v2, v3, :cond_0

    .line 98
    iget-object v2, v0, Lcom/syu/remote/Callback$Lisenter;->lisenter:Lcom/syu/remote/Callback$OnRefreshLisenter;

    iget-object v3, p0, Lcom/syu/remote/Callback$Massage$1;->this$1:Lcom/syu/remote/Callback$Massage;

    iget v3, v3, Lcom/syu/remote/Callback$Massage;->code:I

    iget-object v4, p0, Lcom/syu/remote/Callback$Massage$1;->this$1:Lcom/syu/remote/Callback$Massage;

    iget-object v4, v4, Lcom/syu/remote/Callback$Massage;->ints:[I

    iget-object v5, p0, Lcom/syu/remote/Callback$Massage$1;->this$1:Lcom/syu/remote/Callback$Massage;

    iget-object v5, v5, Lcom/syu/remote/Callback$Massage;->flts:[F

    iget-object v6, p0, Lcom/syu/remote/Callback$Massage$1;->this$1:Lcom/syu/remote/Callback$Massage;

    iget-object v6, v6, Lcom/syu/remote/Callback$Massage;->strs:[Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/syu/remote/Callback$OnRefreshLisenter;->onRefresh(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method
