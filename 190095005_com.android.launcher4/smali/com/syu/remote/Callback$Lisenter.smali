.class Lcom/syu/remote/Callback$Lisenter;
.super Ljava/lang/Object;
.source "Callback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/remote/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Lisenter"
.end annotation


# instance fields
.field code:I

.field lisenter:Lcom/syu/remote/Callback$OnRefreshLisenter;

.field final synthetic this$0:Lcom/syu/remote/Callback;


# direct methods
.method public constructor <init>(Lcom/syu/remote/Callback;Lcom/syu/remote/Callback$OnRefreshLisenter;I)V
    .locals 0
    .param p2, "lisenter"    # Lcom/syu/remote/Callback$OnRefreshLisenter;
    .param p3, "code"    # I

    .prologue
    .line 72
    iput-object p1, p0, Lcom/syu/remote/Callback$Lisenter;->this$0:Lcom/syu/remote/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, Lcom/syu/remote/Callback$Lisenter;->lisenter:Lcom/syu/remote/Callback$OnRefreshLisenter;

    .line 74
    iput p3, p0, Lcom/syu/remote/Callback$Lisenter;->code:I

    .line 75
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 79
    instance-of v0, p1, Lcom/syu/remote/Callback$Lisenter;

    if-eqz v0, :cond_1

    .line 80
    iget v1, p0, Lcom/syu/remote/Callback$Lisenter;->code:I

    move-object v0, p1

    check-cast v0, Lcom/syu/remote/Callback$Lisenter;

    iget v0, v0, Lcom/syu/remote/Callback$Lisenter;->code:I

    if-ne v1, v0, :cond_0

    .line 81
    check-cast p1, Lcom/syu/remote/Callback$Lisenter;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/syu/remote/Callback$Lisenter;->lisenter:Lcom/syu/remote/Callback$OnRefreshLisenter;

    iget-object v1, p0, Lcom/syu/remote/Callback$Lisenter;->lisenter:Lcom/syu/remote/Callback$OnRefreshLisenter;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
