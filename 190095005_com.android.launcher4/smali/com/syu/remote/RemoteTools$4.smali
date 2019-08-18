.class Lcom/syu/remote/RemoteTools$4;
.super Ljava/lang/Object;
.source "RemoteTools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/remote/RemoteTools;->notify(I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/remote/RemoteTools;

.field private final synthetic val$codes:[I

.field private final synthetic val$registrar:Lcom/syu/remote/Registrar;


# direct methods
.method constructor <init>(Lcom/syu/remote/RemoteTools;Lcom/syu/remote/Registrar;[I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/remote/RemoteTools$4;->this$0:Lcom/syu/remote/RemoteTools;

    iput-object p2, p0, Lcom/syu/remote/RemoteTools$4;->val$registrar:Lcom/syu/remote/Registrar;

    iput-object p3, p0, Lcom/syu/remote/RemoteTools$4;->val$codes:[I

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 158
    iget-object v1, p0, Lcom/syu/remote/RemoteTools$4;->val$registrar:Lcom/syu/remote/Registrar;

    if-eqz v1, :cond_0

    .line 159
    iget-object v3, p0, Lcom/syu/remote/RemoteTools$4;->val$codes:[I

    array-length v4, v3

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_1

    .line 162
    :cond_0
    return-void

    .line 159
    :cond_1
    aget v0, v3, v1

    .line 160
    .local v0, "code":I
    iget-object v5, p0, Lcom/syu/remote/RemoteTools$4;->val$registrar:Lcom/syu/remote/Registrar;

    const/4 v6, 0x1

    new-array v6, v6, [I

    aput v0, v6, v2

    invoke-virtual {v5, v6}, Lcom/syu/remote/Registrar;->notify([I)V

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
