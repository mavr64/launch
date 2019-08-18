.class Lcom/android/launcher4/Launcher$26;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->randomSpeed()V
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    .line 2170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0x3e8

    const/16 v4, 0x8c

    .line 2172
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget v1, v1, Lcom/android/launcher4/Launcher;->sp:I

    if-nez v1, :cond_5

    .line 2173
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iput-boolean v2, v1, Lcom/android/launcher4/Launcher;->upOrDown:Z

    .line 2174
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iput-boolean v2, v1, Lcom/android/launcher4/Launcher;->isInRandom:Z

    .line 2175
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget v2, v1, Lcom/android/launcher4/Launcher;->sp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/launcher4/Launcher;->sp:I

    .line 2176
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/sdcard/tzyfyt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2177
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2178
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, v1, Lcom/android/launcher4/Launcher;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2195
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v2, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget v2, v2, Lcom/android/launcher4/Launcher;->sp:I

    iput v2, v1, Lcom/android/launcher4/Launcher;->carSpeed:I

    .line 2197
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget v1, v1, Lcom/android/launcher4/Launcher;->carSpeed:I

    const/16 v2, 0x19

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget-boolean v1, v1, Lcom/android/launcher4/Launcher;->upOrDown:Z

    if-nez v1, :cond_1

    .line 2198
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$68(Lcom/android/launcher4/Launcher;)V

    .line 2200
    :cond_1
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget v1, v1, Lcom/android/launcher4/Launcher;->carSpeed:I

    const/16 v2, 0x37

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget-boolean v1, v1, Lcom/android/launcher4/Launcher;->upOrDown:Z

    if-nez v1, :cond_2

    .line 2201
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$66(Lcom/android/launcher4/Launcher;)V

    .line 2204
    :cond_2
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget v1, v1, Lcom/android/launcher4/Launcher;->carSpeed:I

    const/16 v2, 0x4b

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget-boolean v1, v1, Lcom/android/launcher4/Launcher;->upOrDown:Z

    if-nez v1, :cond_3

    .line 2205
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$67(Lcom/android/launcher4/Launcher;)V

    .line 2207
    :cond_3
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget v1, v1, Lcom/android/launcher4/Launcher;->carSpeed:I

    if-ne v1, v4, :cond_4

    .line 2208
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$65(Lcom/android/launcher4/Launcher;)V

    .line 2210
    :cond_4
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$28(Lcom/android/launcher4/Launcher;)V

    .line 2211
    return-void

    .line 2179
    :cond_5
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget v1, v1, Lcom/android/launcher4/Launcher;->sp:I

    if-ge v1, v4, :cond_6

    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget-boolean v1, v1, Lcom/android/launcher4/Launcher;->upOrDown:Z

    if-nez v1, :cond_6

    .line 2180
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iput-boolean v3, v1, Lcom/android/launcher4/Launcher;->isInRandom:Z

    .line 2181
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget v2, v1, Lcom/android/launcher4/Launcher;->sp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/launcher4/Launcher;->sp:I

    .line 2182
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, v1, Lcom/android/launcher4/Launcher;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2183
    :cond_6
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget v1, v1, Lcom/android/launcher4/Launcher;->sp:I

    if-lt v1, v4, :cond_7

    .line 2184
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iput-boolean v3, v1, Lcom/android/launcher4/Launcher;->upOrDown:Z

    .line 2185
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget v2, v1, Lcom/android/launcher4/Launcher;->sp:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/launcher4/Launcher;->sp:I

    .line 2186
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, v1, Lcom/android/launcher4/Launcher;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2187
    :cond_7
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget v1, v1, Lcom/android/launcher4/Launcher;->sp:I

    if-ge v1, v4, :cond_8

    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget-boolean v1, v1, Lcom/android/launcher4/Launcher;->upOrDown:Z

    if-eqz v1, :cond_8

    .line 2188
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget v2, v1, Lcom/android/launcher4/Launcher;->sp:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/launcher4/Launcher;->sp:I

    .line 2189
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, v1, Lcom/android/launcher4/Launcher;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2191
    :cond_8
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget v2, v1, Lcom/android/launcher4/Launcher;->sp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/launcher4/Launcher;->sp:I

    .line 2192
    iget-object v1, p0, Lcom/android/launcher4/Launcher$26;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, v1, Lcom/android/launcher4/Launcher;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
