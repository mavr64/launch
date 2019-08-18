.class Lcom/android/launcher4/Workspace$12;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher4/CellLayout;ZLcom/android/launcher4/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Workspace;

.field private final synthetic val$container:J

.field private final synthetic val$item:Lcom/android/launcher4/ItemInfo;

.field private final synthetic val$pendingInfo:Lcom/android/launcher4/PendingAddItemInfo;

.field private final synthetic val$screenId:J


# direct methods
.method constructor <init>(Lcom/android/launcher4/Workspace;Lcom/android/launcher4/PendingAddItemInfo;Lcom/android/launcher4/ItemInfo;JJ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Workspace$12;->this$0:Lcom/android/launcher4/Workspace;

    iput-object p2, p0, Lcom/android/launcher4/Workspace$12;->val$pendingInfo:Lcom/android/launcher4/PendingAddItemInfo;

    iput-object p3, p0, Lcom/android/launcher4/Workspace$12;->val$item:Lcom/android/launcher4/ItemInfo;

    iput-wide p4, p0, Lcom/android/launcher4/Workspace$12;->val$container:J

    iput-wide p6, p0, Lcom/android/launcher4/Workspace$12;->val$screenId:J

    .line 4183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 4189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace$12;->val$pendingInfo:Lcom/android/launcher4/PendingAddItemInfo;

    iget v2, v2, Lcom/android/launcher4/PendingAddItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 4204
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown item type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4205
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace$12;->val$pendingInfo:Lcom/android/launcher4/PendingAddItemInfo;

    iget v4, v4, Lcom/android/launcher4/PendingAddItemInfo;->itemType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4204
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4191
    :pswitch_1
    const/4 v2, 0x2

    new-array v9, v2, [I

    .line 4192
    .local v9, "span":[I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace$12;->val$item:Lcom/android/launcher4/ItemInfo;

    iget v3, v3, Lcom/android/launcher4/ItemInfo;->spanX:I

    aput v3, v9, v2

    .line 4193
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace$12;->val$item:Lcom/android/launcher4/ItemInfo;

    iget v3, v3, Lcom/android/launcher4/ItemInfo;->spanY:I

    aput v3, v9, v2

    .line 4194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace$12;->this$0:Lcom/android/launcher4/Workspace;

    invoke-static {v2}, Lcom/android/launcher4/Workspace;->access$0(Lcom/android/launcher4/Workspace;)Lcom/android/launcher4/Launcher;

    move-result-object v2

    .line 4195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace$12;->val$pendingInfo:Lcom/android/launcher4/PendingAddItemInfo;

    check-cast v3, Lcom/android/launcher4/PendingAddWidgetInfo;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/launcher4/Workspace$12;->val$container:J

    .line 4196
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/launcher4/Workspace$12;->val$screenId:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher4/Workspace$12;->this$0:Lcom/android/launcher4/Workspace;

    invoke-static {v8}, Lcom/android/launcher4/Workspace;->access$8(Lcom/android/launcher4/Workspace;)[I

    move-result-object v8

    const/4 v10, 0x0

    .line 4194
    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher4/Launcher;->addAppWidgetFromDrop(Lcom/android/launcher4/PendingAddWidgetInfo;JJ[I[I[I)V

    .line 4207
    .end local v9    # "span":[I
    :goto_0
    return-void

    .line 4199
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace$12;->this$0:Lcom/android/launcher4/Workspace;

    invoke-static {v2}, Lcom/android/launcher4/Workspace;->access$0(Lcom/android/launcher4/Workspace;)Lcom/android/launcher4/Launcher;

    move-result-object v10

    .line 4200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace$12;->val$pendingInfo:Lcom/android/launcher4/PendingAddItemInfo;

    iget-object v11, v2, Lcom/android/launcher4/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/launcher4/Workspace$12;->val$container:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/launcher4/Workspace$12;->val$screenId:J

    .line 4201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace$12;->this$0:Lcom/android/launcher4/Workspace;

    invoke-static {v2}, Lcom/android/launcher4/Workspace;->access$8(Lcom/android/launcher4/Workspace;)[I

    move-result-object v16

    const/16 v17, 0x0

    .line 4199
    invoke-virtual/range {v10 .. v17}, Lcom/android/launcher4/Launcher;->processShortcutFromDrop(Landroid/content/ComponentName;JJ[I[I)V

    goto :goto_0

    .line 4189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
