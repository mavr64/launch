.class Lcom/android/launcher4/WallpaperPickerActivity$4;
.super Landroid/database/DataSetObserver;
.source "WallpaperPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/WallpaperPickerActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/WallpaperPickerActivity;

.field private final synthetic val$a:Lcom/android/launcher4/LiveWallpaperListAdapter;

.field private final synthetic val$liveWallpapersView:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher4/WallpaperPickerActivity;Landroid/widget/LinearLayout;Lcom/android/launcher4/LiveWallpaperListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/WallpaperPickerActivity$4;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    iput-object p2, p0, Lcom/android/launcher4/WallpaperPickerActivity$4;->val$liveWallpapersView:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/launcher4/WallpaperPickerActivity$4;->val$a:Lcom/android/launcher4/LiveWallpaperListAdapter;

    .line 352
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 354
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity$4;->val$liveWallpapersView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 355
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity$4;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$4;->val$liveWallpapersView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/launcher4/WallpaperPickerActivity$4;->val$a:Lcom/android/launcher4/LiveWallpaperListAdapter;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/launcher4/WallpaperPickerActivity;->access$12(Lcom/android/launcher4/WallpaperPickerActivity;Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;ZZ)V

    .line 356
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity$4;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v0}, Lcom/android/launcher4/WallpaperPickerActivity;->access$13(Lcom/android/launcher4/WallpaperPickerActivity;)V

    .line 357
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity$4;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v0}, Lcom/android/launcher4/WallpaperPickerActivity;->access$14(Lcom/android/launcher4/WallpaperPickerActivity;)V

    .line 358
    return-void
.end method
