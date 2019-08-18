.class Lcom/syu/remote/RemoteTools$5;
.super Lcom/syu/remote/Registrar;
.source "RemoteTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/remote/RemoteTools;->enableModule(I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/remote/RemoteTools;

.field private final synthetic val$codes:[I


# direct methods
.method constructor <init>(Lcom/syu/remote/RemoteTools;[I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/remote/RemoteTools$5;->this$0:Lcom/syu/remote/RemoteTools;

    iput-object p2, p0, Lcom/syu/remote/RemoteTools$5;->val$codes:[I

    .line 172
    invoke-direct {p0}, Lcom/syu/remote/Registrar;-><init>()V

    return-void
.end method


# virtual methods
.method public registerCallback()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/syu/remote/RemoteTools$5;->val$codes:[I

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/syu/remote/RemoteTools$5;->val$codes:[I

    invoke-virtual {p0, v0}, Lcom/syu/remote/RemoteTools$5;->registerCode([I)V

    .line 179
    :cond_0
    return-void
.end method
