.class public Lcom/android/launcher4/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher4/LauncherModel$Callbacks;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/Launcher$ADASReceiver;,
        Lcom/android/launcher4/Launcher$AppWidgetResetObserver;,
        Lcom/android/launcher4/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/android/launcher4/Launcher$CustomContentCallbacks;,
        Lcom/android/launcher4/Launcher$LocaleConfiguration;,
        Lcom/android/launcher4/Launcher$OnSeekBarChangeListenerImp;,
        Lcom/android/launcher4/Launcher$PendingAddArguments;,
        Lcom/android/launcher4/Launcher$QSBScroller;,
        Lcom/android/launcher4/Launcher$State;,
        Lcom/android/launcher4/Launcher$ThreadWL;
    }
.end annotation


# static fields
.field static final APPWIDGET_HOST_ID:I

.field static final CORRUPTION_EMAIL_SENT_KEY:Ljava/lang/String; = "corruptionEmailSent"

.field static final DEBUG_DUMP_LOG:Z = false

.field static final DEBUG_RESUME_TIME:Z = false

.field static final DEBUG_STRICT_MODE:Z = false

.field static final DEBUG_WIDGETS:Z = true

.field static final DEFAULT_SCREEN:I = 0x0

.field private static final DISABLE_CLINGS:Z = true

.field private static final DISABLE_CUSTOM_CLINGS:Z = true

.field private static final DISABLE_MARKET_BUTTON:Z = true

.field private static final DISMISS_CLING_DURATION:I = 0xc8

.field static final DUMP_STATE_PROPERTY:Ljava/lang/String; = "launcher_dump_state"

.field private static final EXIT_SPRINGLOADED_MODE_LONG_TIMEOUT:I = 0x258

.field private static final EXIT_SPRINGLOADED_MODE_SHORT_TIMEOUT:I = 0x12c

.field static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field static final FORCE_ENABLE_ROTATION_PROPERTY:Ljava/lang/String; = "launcher_force_rotate"

.field static final INTENT_EXTRA_IGNORE_LAUNCH_ANIMATION:Ljava/lang/String; = "com.android.launcher4.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

.field static final LOGD:Z = false

.field private static NEW_APPS_ANIMATION_DELAY:I = 0x0

.field private static NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I = 0x0

.field private static NEW_APPS_PAGE_MOVE_DELAY:I = 0x0

.field private static final PREFERENCES:Ljava/lang/String; = "launcher.preferences"

.field static final PROFILE_STARTUP:Z = false

.field private static final REQUEST_BIND_APPWIDGET:I = 0xb

.field private static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field private static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field protected static final REQUEST_LAST:I = 0x64

.field private static final REQUEST_PICK_APPLICATION:I = 0x6

.field private static final REQUEST_PICK_APPWIDGET:I = 0x9

.field private static final REQUEST_PICK_SHORTCUT:I = 0x7

.field private static final REQUEST_PICK_WALLPAPER:I = 0xa

.field private static final RUNTIME_STATE:Ljava/lang/String; = "launcher.state"

.field private static final RUNTIME_STATE_CURRENT_SCREEN:Ljava/lang/String; = "launcher.current_screen"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_X:Ljava/lang/String; = "launcher.add_cell_x"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_Y:Ljava/lang/String; = "launcher.add_cell_y"

.field private static final RUNTIME_STATE_PENDING_ADD_CONTAINER:Ljava/lang/String; = "launcher.add_container"

.field private static final RUNTIME_STATE_PENDING_ADD_SCREEN:Ljava/lang/String; = "launcher.add_screen"

.field private static final RUNTIME_STATE_PENDING_ADD_SPAN_X:Ljava/lang/String; = "launcher.add_span_x"

.field private static final RUNTIME_STATE_PENDING_ADD_SPAN_Y:Ljava/lang/String; = "launcher.add_span_y"

.field private static final RUNTIME_STATE_PENDING_ADD_WIDGET_INFO:Ljava/lang/String; = "launcher.add_widget_info"

.field private static final RUNTIME_STATE_PENDING_FOLDER_RENAME:Ljava/lang/String; = "launcher.rename_folder"

.field private static final RUNTIME_STATE_PENDING_FOLDER_RENAME_ID:Ljava/lang/String; = "launcher.rename_folder_id"

.field static final SCREEN_COUNT:I = 0x5

.field private static final SHOW_CLING_DURATION:I = 0xfa

.field public static final SHOW_WEIGHT_WATCHER:Ljava/lang/String; = "debug.show_mem"

.field public static final SHOW_WEIGHT_WATCHER_DEFAULT:Z = false

.field static final TAG:Ljava/lang/String; = "Launcher"

.field private static final TOOLBAR_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.launcher.toolbar_icon"

.field private static final TOOLBAR_SEARCH_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.launcher.toolbar_search_icon"

.field private static final TOOLBAR_VOICE_SEARCH_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.launcher.toolbar_voice_search_icon"

.field public static activecode:Ljava/lang/String;

.field public static activekey:I

.field public static areaindex:I

.field public static bsp_recv:I

.field private static count:I

.field public static coverFlowText:Landroid/widget/TextView;

.field public static freq:Ljava/lang/String;

.field public static isactive:I

.field private static kwAPi:Lcn/kuwo/autosdk/api/KWAPI;

.field public static liveWallPaperButton:Landroid/view/View;

.field public static mAllAppView:Landroid/widget/TextView;

.field private static mIntentsOnWorkspaceFromUpgradePath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public static mLauncher:Lcom/android/launcher4/Launcher;

.field public static mModel:Lcom/android/launcher4/LauncherModel;

.field private static mWorkspace:Lcom/android/launcher4/Workspace;

.field public static radioFreq:Ljava/lang/String;

.field public static radioFreqState:I

.field private static sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

.field static sDateFormat:Ljava/text/DateFormat;

.field static sDateStamp:Ljava/util/Date;

.field static final sDumpLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher4/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static sForceEnableRotation:Z

.field private static sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

.field private static sLocaleConfiguration:Lcom/android/launcher4/Launcher$LocaleConfiguration;

.field private static final sLock:Ljava/lang/Object;

.field private static sPausedFromUserAction:Z

.field private static sPendingAddList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/Launcher$PendingAddArguments;",
            ">;"
        }
    .end annotation
.end field

.field static sRunStart:J

.field private static sScreen:I

.field private static sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

.field public static str_device:Ljava/lang/String;

.field public static wallpaperButton:Landroid/view/View;

.field public static widgetButton:Landroid/view/View;


# instance fields
.field private ADASAction:Ljava/lang/String;

.field private final ADVANCE_MSG:I

.field private activeAlertDialog:Landroid/app/AlertDialog;

.field public activestep:Z

.field private adapter:Limagecoverflow/MyCoverFlowAdapter;

.field private final adasReceiver:Landroid/content/BroadcastReceiver;

.field private adasView:Landroid/view/View;

.field app:Lcom/android/launcher4/LauncherApplication;

.field public carSpeed:I

.field private clickIndex:I

.field private closePop:Z

.field private customView:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field firstLayout:Landroid/widget/RelativeLayout;

.field public handler:Landroid/os/Handler;

.field private imgAdas:Landroid/widget/ImageView;

.field private img_freq_point:Lcom/fyt/widget/RadioRuler;

.field isAnimaStart:Z

.field isInEnd:Z

.field isInRandom:Z

.field isRoadRun:I

.field isfirstlayout:Z

.field public ivALbumBg:Landroid/widget/ImageView;

.field private ivAdasTip:Landroid/widget/ImageView;

.field private ivCar:Landroid/widget/ImageView;

.field private ivFrontCar:Landroid/widget/ImageView;

.field private ivRight:Landroid/widget/ImageView;

.field private ivleft:Landroid/widget/ImageView;

.field private kuwomusic_next:Landroid/widget/Button;

.field private kuwomusic_playpause:Landroid/widget/Button;

.field private kuwomusic_prev:Landroid/widget/Button;

.field private lastSpeed:I

.field lastpath:Ljava/lang/String;

.field loadAnimation:Landroid/view/animation/Animation;

.field private final mAdvanceInterval:I

.field private final mAdvanceStagger:I

.field mAllAppsButton:Landroid/view/View;

.field private mAppMarketIntent:Landroid/content/Intent;

.field private mAppWidgetHost:Lcom/android/launcher4/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

.field private mAppsCustomizeTabHost:Lcom/android/launcher4/AppsCustomizeTabHost;

.field private mAttached:Z

.field private mAutoAdvanceRunning:Z

.field private mAutoAdvanceSentTime:J

.field private mAutoAdvanceTimeLeft:J

.field private mBindOnResumeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mBindPackagesUpdatedRunnable:Ljava/lang/Runnable;

.field private mBrightLevel:I

.field private mBtavAritst:Landroid/widget/TextView;

.field private mBtavIcon:Landroid/view/View;

.field private mBtavName:Landroid/widget/TextView;

.field private mBtavNextButton:Landroid/widget/Button;

.field private mBtavPlayPauseButton:Landroid/widget/Button;

.field private mBtavPrevButton:Landroid/widget/Button;

.field private mBtavView:Landroid/view/View;

.field private mBuildLayersRunnable:Ljava/lang/Runnable;

.field private mCamera_DisImageView:Landroid/widget/ImageView;

.field private mCamera_DisView:Landroid/widget/TextView;

.field private mCarLightView:Landroid/widget/ImageView;

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mCoverFlowView:Limagecoverflow/CoverFlowView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Limagecoverflow/CoverFlowView",
            "<",
            "Limagecoverflow/MyCoverFlowAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mCurCityView:Landroid/widget/TextView;

.field public mCurDescription:Lcom/syu/weather/WeatherDescription;

.field private mCurDis_AllView:Landroid/widget/TextView;

.field private mCurDis_RemainView:Landroid/widget/TextView;

.field private mCurRemainTimeView:Landroid/widget/TextView;

.field private mCurRoadNameView:Landroid/widget/TextView;

.field private mCurTime:J

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDragController:Lcom/android/launcher4/DragController;

.field private mDragLayer:Lcom/android/launcher4/DragLayer;

.field private mDynamicTrailView:Landroid/widget/ImageView;

.field private mFolderIconBitmap:Landroid/graphics/Bitmap;

.field private mFolderIconCanvas:Landroid/graphics/Canvas;

.field private mFolderIconImageView:Landroid/widget/ImageView;

.field private mFolderInfo:Lcom/android/launcher4/FolderInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mHapticFeedbackTouchListener:Landroid/view/View$OnTouchListener;

.field private mHasFocus:Z

.field private mHideFromAccessibilityHelper:Lcom/android/launcher4/HideFromAccessibilityHelper;

.field public mHotseat:Landroid/view/View;

.field private mIconCache:Lcom/android/launcher4/IconCache;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitNaviInfoView:Landroid/view/View;

.field public mIvGpsAngle:Landroid/widget/ImageView;

.field private mKwArtist:Landroid/widget/TextView;

.field private mKwMusicName:Landroid/widget/TextView;

.field public mKwPlayState:Z

.field private mLastTime:J

.field private mLauncherView:Landroid/view/View;

.field private mMapbgUnitView:Landroid/widget/ImageView;

.field private mMiuDrive:Landroid/widget/TextView;

.field private mMusicIcon:Landroid/view/View;

.field private mMusicNextButton:Landroid/widget/Button;

.field private mMusicNextButtonTwo:Landroid/widget/Button;

.field private mMusicPrevButton:Landroid/widget/Button;

.field private mMusicPrevButtonTwo:Landroid/widget/Button;

.field private mNaviMycar:Landroid/widget/ImageView;

.field private mNaviRunView:Landroid/view/View;

.field private mNaviView:Landroid/view/View;

.field private mNextRoadNameView:Landroid/widget/TextView;

.field private mOnResumeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOnResumeNeedsLoad:Z

.field private mOnResumeState:Lcom/android/launcher4/Launcher$State;

.field private mOverviewPanel:Landroid/view/View;

.field private mPaused:Z

.field private mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

.field private mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mQsbBar:Landroid/view/View;

.field mQsbScroller:Lcom/android/launcher4/Launcher$QSBScroller;

.field private mRadioIcon:Landroid/view/View;

.field private mRadioNextButton:Landroid/widget/Button;

.field private mRadioPauseButton:Landroid/widget/Button;

.field private mRadioPrevButton:Landroid/widget/Button;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRectForFolderAnimation:Landroid/graphics/Rect;

.field private final mRestoreScreenOrientationDelay:I

.field private mRestoring:Z

.field private mRoad:Landroid/widget/ImageView;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mSpeed1:Landroid/widget/TextView;

.field private mSpeed2:Landroid/widget/TextView;

.field private mSpeed3:Landroid/widget/TextView;

.field private mState:Lcom/android/launcher4/Launcher$State;

.field private mStateAnimation:Landroid/animation/AnimatorSet;

.field private mStats:Lcom/android/launcher4/Stats;

.field private final mSynchronouslyBoundPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpAddItemCellCoordinates:[I

.field private mTurnIconView:Landroid/widget/ImageView;

.field private mTurntableView:Lcom/fyt/widget/TurntableView;

.field private mTvApps:Landroid/widget/TextView;

.field private mTvBt:Landroid/widget/TextView;

.field private mTvCar:Landroid/widget/TextView;

.field private mTvDVR:Landroid/widget/TextView;

.field private mTvFile:Landroid/widget/TextView;

.field private mTvGallery:Landroid/widget/TextView;

.field private mTvGpsAngle:Landroid/widget/TextView;

.field private mTvMovie:Landroid/widget/TextView;

.field private mTvMusic:Landroid/widget/TextView;

.field private mTvNavi:Landroid/widget/TextView;

.field private mTvRadio:Landroid/widget/TextView;

.field private mTvSettings:Landroid/widget/TextView;

.field private mTvSpeed:Landroid/widget/TextView;

.field private mUserPresent:Z

.field private mVideoPlayState:Ljava/lang/String;

.field private mVisible:Z

.field private mWaitingForResult:Z

.field private mWaitingForResume:Lcom/android/launcher4/BubbleTextView;

.field private mWeather:Landroid/view/View;

.field private mWeightWatcher:Landroid/view/View;

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetsAndShortcuts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetsToAdvance:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkspaceLoading:Z

.field public manager:Lcom/syu/weather/WeatherManager;

.field private mapSpeed:Landroid/view/View;

.field musicNamePre:Ljava/lang/String;

.field private musicProgress:Landroid/widget/ProgressBar;

.field private musicSeekBar:Landroid/widget/SeekBar;

.field private music_playpause:Landroid/widget/Button;

.field private music_playpause_two:Landroid/widget/Button;

.field private num:[I

.field private onRefreshKwStatus:Lcn/kuwo/autosdk/api/OnPlayerStatusListener;

.field private pipViews:Landroid/view/View;

.field private radioBand:I

.field private refreshBtav:Lcom/fyt/car/IUiRefresher;

.field refreshDvr:Lcom/fyt/car/IUiRefresher;

.field private refreshMain:Lcom/syu/remote/Callback$OnRefreshLisenter;

.field private refreshMusic:Lcom/fyt/car/IUiRefresher;

.field private refreshNaviState:Lcom/fyt/car/IUiRefresher;

.field private refreshNaviView:Lcom/fyt/car/IUiRefresher;

.field refreshRadioBand:Lcom/syu/remote/Callback$OnRefreshLisenter;

.field refreshRadioFreq:Lcom/syu/remote/Callback$OnRefreshLisenter;

.field private refreshVideo:Lcom/fyt/car/IUiRefresher;

.field private removeMusic:Landroid/content/BroadcastReceiver;

.field runnable_register:Ljava/lang/Runnable;

.field runnable_showfinal:Ljava/lang/Runnable;

.field public showKuwoContent:Z

.field sp:I

.field public str_toast:Ljava/lang/String;

.field success:Z

.field tools:Lcom/syu/remote/RemoteTools;

.field private tvAlbum:Landroid/widget/TextView;

.field private tvAritst:Landroid/widget/TextView;

.field private tvBand:Landroid/widget/TextView;

.field private tvCurFreq:Landroid/widget/TextView;

.field private tvCurTime:Landroid/widget/TextView;

.field private tvMusicName:Landroid/widget/TextView;

.field private tvMusicNameTwo:Landroid/widget/TextView;

.field private tvTopLight:Landroid/widget/TextView;

.field private tvTotalTime:Landroid/widget/TextView;

.field private tvUnit:Landroid/widget/TextView;

.field upOrDown:Z

.field private video_next:Landroid/widget/Button;

.field private video_playpause:Landroid/widget/Button;

.field private video_prev:Landroid/widget/Button;

.field private volume:I

.field private weatherCity:Landroid/widget/TextView;

.field private weatherImg:Landroid/widget/ImageView;

.field private weatherTemp:Landroid/widget/TextView;

.field private weatherTempRange:Landroid/widget/TextView;

.field private weatherWeather:Landroid/widget/TextView;

.field private weatherWind:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x1f4

    const/4 v3, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 201
    const-string v0, ""

    sput-object v0, Lcom/android/launcher4/Launcher;->str_device:Ljava/lang/String;

    .line 202
    const-string v0, ""

    sput-object v0, Lcom/android/launcher4/Launcher;->activecode:Ljava/lang/String;

    .line 203
    sput v2, Lcom/android/launcher4/Launcher;->isactive:I

    .line 204
    sput v2, Lcom/android/launcher4/Launcher;->areaindex:I

    .line 205
    sput v2, Lcom/android/launcher4/Launcher;->activekey:I

    .line 206
    sput v2, Lcom/android/launcher4/Launcher;->bsp_recv:I

    .line 290
    sget v0, Lcom/android/launcher4/LauncherApplication;->appWidget_Host_Id:I

    sput v0, Lcom/android/launcher4/Launcher;->APPWIDGET_HOST_ID:I

    .line 296
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher4/Launcher;->sLock:Ljava/lang/Object;

    .line 297
    sput v2, Lcom/android/launcher4/Launcher;->sScreen:I

    .line 301
    sput v4, Lcom/android/launcher4/Launcher;->NEW_APPS_PAGE_MOVE_DELAY:I

    .line 302
    const/4 v0, 0x5

    sput v0, Lcom/android/launcher4/Launcher;->NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I

    .line 303
    sput v4, Lcom/android/launcher4/Launcher;->NEW_APPS_ANIMATION_DELAY:I

    .line 393
    sput-boolean v2, Lcom/android/launcher4/Launcher;->sPausedFromUserAction:Z

    .line 408
    sput-object v5, Lcom/android/launcher4/Launcher;->sLocaleConfiguration:Lcom/android/launcher4/Launcher$LocaleConfiguration;

    .line 410
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher4/Launcher;->sFolders:Ljava/util/HashMap;

    .line 428
    new-array v0, v1, [Landroid/graphics/drawable/Drawable$ConstantState;

    sput-object v0, Lcom/android/launcher4/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 429
    new-array v0, v1, [Landroid/graphics/drawable/Drawable$ConstantState;

    sput-object v0, Lcom/android/launcher4/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 430
    new-array v0, v1, [Landroid/graphics/drawable/Drawable$ConstantState;

    sput-object v0, Lcom/android/launcher4/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher4/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    .line 438
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/launcher4/Launcher;->sDateStamp:Ljava/util/Date;

    .line 439
    invoke-static {v3, v3}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/android/launcher4/Launcher;->sDateFormat:Ljava/text/DateFormat;

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/launcher4/Launcher;->sRunStart:J

    .line 450
    sput-object v5, Lcom/android/launcher4/Launcher;->mIntentsOnWorkspaceFromUpgradePath:Ljava/util/ArrayList;

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher4/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    .line 474
    const-string v0, "launcher_force_rotate"

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher4/Launcher;->sForceEnableRotation:Z

    .line 4249
    sput v2, Lcom/android/launcher4/Launcher;->count:I

    .line 4700
    const-string v0, "87.50"

    sput-object v0, Lcom/android/launcher4/Launcher;->freq:Ljava/lang/String;

    .line 4742
    sput v2, Lcom/android/launcher4/Launcher;->radioFreqState:I

    .line 4743
    const-string v0, "87.50"

    sput-object v0, Lcom/android/launcher4/Launcher;->radioFreq:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 196
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 207
    iput-boolean v3, p0, Lcom/android/launcher4/Launcher;->activestep:Z

    .line 216
    iput-boolean v2, p0, Lcom/android/launcher4/Launcher;->isfirstlayout:Z

    .line 287
    sget-object v0, Lcom/android/launcher4/Launcher$State;->WORKSPACE:Lcom/android/launcher4/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->mState:Lcom/android/launcher4/Launcher$State;

    .line 305
    new-instance v0, Lcom/android/launcher4/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0, v4}, Lcom/android/launcher4/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/Launcher$CloseSystemDialogsIntentReceiver;)V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 306
    new-instance v0, Lcom/android/launcher4/Launcher$ADASReceiver;

    invoke-direct {v0, p0, v4}, Lcom/android/launcher4/Launcher$ADASReceiver;-><init>(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/Launcher$ADASReceiver;)V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->adasReceiver:Landroid/content/BroadcastReceiver;

    .line 307
    new-instance v0, Lcom/android/launcher4/Launcher$AppWidgetResetObserver;

    invoke-direct {v0, p0}, Lcom/android/launcher4/Launcher$AppWidgetResetObserver;-><init>(Lcom/android/launcher4/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 341
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->handler:Landroid/os/Handler;

    .line 349
    new-instance v0, Lcom/android/launcher4/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher4/ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    .line 352
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 361
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    .line 366
    iput-boolean v2, p0, Lcom/android/launcher4/Launcher;->mAutoAdvanceRunning:Z

    .line 376
    sget-object v0, Lcom/android/launcher4/Launcher$State;->NONE:Lcom/android/launcher4/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->mOnResumeState:Lcom/android/launcher4/Launcher$State;

    .line 378
    iput-object v4, p0, Lcom/android/launcher4/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 380
    iput-boolean v3, p0, Lcom/android/launcher4/Launcher;->mWorkspaceLoading:Z

    .line 381
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 382
    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher4/Launcher;->closePop:Z

    .line 384
    iput-boolean v3, p0, Lcom/android/launcher4/Launcher;->mPaused:Z

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    .line 401
    iput-boolean v3, p0, Lcom/android/launcher4/Launcher;->mUserPresent:Z

    .line 402
    iput-boolean v2, p0, Lcom/android/launcher4/Launcher;->mVisible:Z

    .line 403
    iput-boolean v2, p0, Lcom/android/launcher4/Launcher;->mHasFocus:Z

    .line 404
    iput-boolean v2, p0, Lcom/android/launcher4/Launcher;->mAttached:Z

    .line 415
    iput v3, p0, Lcom/android/launcher4/Launcher;->ADVANCE_MSG:I

    .line 416
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/launcher4/Launcher;->mAdvanceInterval:I

    .line 417
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/launcher4/Launcher;->mAdvanceStagger:I

    .line 419
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher4/Launcher;->mAutoAdvanceTimeLeft:J

    .line 420
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    .line 425
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/launcher4/Launcher;->mRestoreScreenOrientationDelay:I

    .line 432
    iput-object v4, p0, Lcom/android/launcher4/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    .line 458
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    .line 462
    new-instance v0, Lcom/android/launcher4/HideFromAccessibilityHelper;

    invoke-direct {v0}, Lcom/android/launcher4/HideFromAccessibilityHelper;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->mHideFromAccessibilityHelper:Lcom/android/launcher4/HideFromAccessibilityHelper;

    .line 464
    new-instance v0, Lcom/android/launcher4/Launcher$1;

    invoke-direct {v0, p0}, Lcom/android/launcher4/Launcher$1;-><init>(Lcom/android/launcher4/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    .line 791
    new-instance v0, Lcom/android/launcher4/Launcher$2;

    invoke-direct {v0, p0}, Lcom/android/launcher4/Launcher$2;-><init>(Lcom/android/launcher4/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->runnable_register:Ljava/lang/Runnable;

    .line 897
    new-instance v0, Lcom/android/launcher4/Launcher$3;

    invoke-direct {v0, p0}, Lcom/android/launcher4/Launcher$3;-><init>(Lcom/android/launcher4/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->onRefreshKwStatus:Lcn/kuwo/autosdk/api/OnPlayerStatusListener;

    .line 1204
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->str_toast:Ljava/lang/String;

    .line 1293
    new-instance v0, Lcom/android/launcher4/Launcher$4;

    invoke-direct {v0, p0}, Lcom/android/launcher4/Launcher$4;-><init>(Lcom/android/launcher4/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->runnable_showfinal:Ljava/lang/Runnable;

    .line 1785
    new-instance v0, Lcom/android/launcher4/Launcher$5;

    invoke-direct {v0, p0}, Lcom/android/launcher4/Launcher$5;-><init>(Lcom/android/launcher4/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->removeMusic:Landroid/content/BroadcastReceiver;

    .line 1868
    new-instance v0, Lcom/android/launcher4/Launcher$6;

    invoke-direct {v0, p0}, Lcom/android/launcher4/Launcher$6;-><init>(Lcom/android/launcher4/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->refreshBtav:Lcom/fyt/car/IUiRefresher;

    .line 1895
    new-instance v0, Lcom/android/launcher4/Launcher$7;

    invoke-direct {v0, p0}, Lcom/android/launcher4/Launcher$7;-><init>(Lcom/android/launcher4/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->refreshDvr:Lcom/fyt/car/IUiRefresher;

    .line 1923
    new-instance v0, Lcom/android/launcher4/Launcher$8;

    invoke-direct {v0, p0}, Lcom/android/launcher4/Launcher$8;-><init>(Lcom/android/launcher4/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->refreshNaviState:Lcom/fyt/car/IUiRefresher;

    .line 1931
    new-instance v0, Lcom/android/launcher4/Launcher$9;

    invoke-direct {v0, p0}, Lcom/android/launcher4/Launcher$9;-><init>(Lcom/android/launcher4/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->refreshNaviView:Lcom/fyt/car/IUiRefresher;

    .line 1940
    iput v5, p0, Lcom/android/launcher4/Launcher;->volume:I

    .line 1943
    new-instance v0, Lcom/android/launcher4/Launcher$10;

    invoke-direct {v0, p0}, Lcom/android/launcher4/Launcher$10;-><init>(Lcom/android/launcher4/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->refreshMain:Lcom/syu/remote/Callback$OnRefreshLisenter;

    .line 2225
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 2226
    iput-object v0, p0, Lcom/android/launcher4/Launcher;->num:[I

    .line 2526
    const-string v0, "action.syncamera.adas.result"

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->ADASAction:Ljava/lang/String;

    .line 2621
    new-instance v0, Lcom/android/launcher4/Launcher$11;

    invoke-direct {v0, p0}, Lcom/android/launcher4/Launcher$11;-><init>(Lcom/android/launcher4/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->mQsbScroller:Lcom/android/launcher4/Launcher$QSBScroller;

    .line 4442
    iput-object v4, p0, Lcom/android/launcher4/Launcher;->lastpath:Ljava/lang/String;

    .line 4443
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->musicNamePre:Ljava/lang/String;

    .line 4445
    new-instance v0, Lcom/android/launcher4/Launcher$12;

    invoke-direct {v0, p0}, Lcom/android/launcher4/Launcher$12;-><init>(Lcom/android/launcher4/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->refreshMusic:Lcom/fyt/car/IUiRefresher;

    .line 4699
    iput v5, p0, Lcom/android/launcher4/Launcher;->radioBand:I

    .line 4702
    new-instance v0, Lcom/android/launcher4/Launcher$13;

    invoke-direct {v0, p0}, Lcom/android/launcher4/Launcher$13;-><init>(Lcom/android/launcher4/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->refreshRadioBand:Lcom/syu/remote/Callback$OnRefreshLisenter;

    .line 4744
    new-instance v0, Lcom/android/launcher4/Launcher$14;

    invoke-direct {v0, p0}, Lcom/android/launcher4/Launcher$14;-><init>(Lcom/android/launcher4/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->refreshRadioFreq:Lcom/syu/remote/Callback$OnRefreshLisenter;

    .line 4822
    new-instance v0, Lcom/android/launcher4/Launcher$15;

    invoke-direct {v0, p0}, Lcom/android/launcher4/Launcher$15;-><init>(Lcom/android/launcher4/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->refreshVideo:Lcom/fyt/car/IUiRefresher;

    .line 5121
    new-instance v0, Lcom/android/launcher4/Launcher$16;

    invoke-direct {v0, p0}, Lcom/android/launcher4/Launcher$16;-><init>(Lcom/android/launcher4/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 5256
    new-instance v0, Lcom/android/launcher4/Launcher$17;

    invoke-direct {v0, p0}, Lcom/android/launcher4/Launcher$17;-><init>(Lcom/android/launcher4/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->mHandler:Landroid/os/Handler;

    .line 6471
    iput-boolean v2, p0, Lcom/android/launcher4/Launcher;->success:Z

    .line 8696
    new-instance v0, Lcom/android/launcher4/Launcher$18;

    invoke-direct {v0, p0}, Lcom/android/launcher4/Launcher$18;-><init>(Lcom/android/launcher4/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->mBindPackagesUpdatedRunnable:Ljava/lang/Runnable;

    .line 196
    return-void

    .line 2225
    nop

    :array_0
    .array-data 4
        0x7f02063d
        0x7f02063e
        0x7f02063f
        0x7f020640
        0x7f020641
        0x7f020642
        0x7f020643
        0x7f020644
        0x7f020645
        0x7f020646
    .end array-data
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    .line 2696
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/launcher4/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2697
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static synthetic access$0()Lcom/android/launcher4/Workspace;
    .locals 1

    .prologue
    .line 312
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/launcher4/Launcher;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 3152
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->kuwomusic_playpause:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$10(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mCamera_DisView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher4/Launcher;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$101(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/Cling;Ljava/lang/Runnable;Landroid/content/Intent;IZ)V
    .locals 0

    .prologue
    .line 8838
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher4/Launcher;->dismissClingApp(Lcom/android/launcher4/Cling;Ljava/lang/Runnable;Landroid/content/Intent;IZ)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/BubbleTextView;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mWaitingForResume:Lcom/android/launcher4/BubbleTextView;

    return-object v0
.end method

.method static synthetic access$103(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/AppsCustomizePagedView;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    return-object v0
.end method

.method static synthetic access$104(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$105(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/Launcher$State;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mState:Lcom/android/launcher4/Launcher$State;

    return-object v0
.end method

.method static synthetic access$106(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/Workspace$State;ZZLjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 7480
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher4/Launcher;->hideAppsCustomizeHelper(Lcom/android/launcher4/Workspace$State;ZZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$107(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/Launcher$State;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/launcher4/Launcher;->mState:Lcom/android/launcher4/Launcher$State;

    return-void
.end method

.method static synthetic access$108(Lcom/android/launcher4/Launcher;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 7268
    invoke-direct {p0, p1, p2}, Lcom/android/launcher4/Launcher;->dispatchOnLauncherTransitionStep(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$109(Lcom/android/launcher4/Launcher;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 7274
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher4/Launcher;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$11(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mCamera_DisImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$110(Lcom/android/launcher4/Launcher;)Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$111(Lcom/android/launcher4/Launcher;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 7227
    invoke-direct {p0, p1, p2}, Lcom/android/launcher4/Launcher;->setPivotsForZoom(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$112(Lcom/android/launcher4/Launcher;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 7257
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher4/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$113()I
    .locals 1

    .prologue
    .line 303
    sget v0, Lcom/android/launcher4/Launcher;->NEW_APPS_ANIMATION_DELAY:I

    return v0
.end method

.method static synthetic access$114(Lcom/android/launcher4/Launcher;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$12(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mCurRemainTimeView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mCurRoadNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mNextRoadNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mNaviMycar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mBtavName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mBtavAritst:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/android/launcher4/Launcher;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$19(Lcom/android/launcher4/Launcher;)Landroid/view/View;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mBtavView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 3151
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mKwMusicName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$20(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->ivCar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$21(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->imgAdas:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$22(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->ivAdasTip:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$23(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->tvTopLight:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$24(Lcom/android/launcher4/Launcher;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 2221
    invoke-direct {p0, p1}, Lcom/android/launcher4/Launcher;->setVisible(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$25(Lcom/android/launcher4/Launcher;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 2217
    invoke-direct {p0, p1}, Lcom/android/launcher4/Launcher;->setGone(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$26(Lcom/android/launcher4/Launcher;)Lcom/fyt/widget/TurntableView;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTurntableView:Lcom/fyt/widget/TurntableView;

    return-object v0
.end method

.method static synthetic access$27(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTvSpeed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$28(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 2230
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->updateSpeedView()V

    return-void
.end method

.method static synthetic access$29(Lcom/android/launcher4/Launcher;)I
    .locals 1

    .prologue
    .line 1940
    iget v0, p0, Lcom/android/launcher4/Launcher;->volume:I

    return v0
.end method

.method static synthetic access$3(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 3151
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mKwArtist:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$30(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 2551
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->setSoundBtn()V

    return-void
.end method

.method static synthetic access$31(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 2562
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->setSoundCloseBtn()V

    return-void
.end method

.method static synthetic access$32(Lcom/android/launcher4/Launcher;I)V
    .locals 0

    .prologue
    .line 1940
    iput p1, p0, Lcom/android/launcher4/Launcher;->volume:I

    return-void
.end method

.method static synthetic access$33(Lcom/android/launcher4/Launcher;I)V
    .locals 0

    .prologue
    .line 1941
    iput p1, p0, Lcom/android/launcher4/Launcher;->mBrightLevel:I

    return-void
.end method

.method static synthetic access$34(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 3151
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTvGpsAngle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$35(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/SearchDropTargetBar;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    return-object v0
.end method

.method static synthetic access$36(Lcom/android/launcher4/Launcher;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 3152
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->music_playpause:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$37(Lcom/android/launcher4/Launcher;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 3152
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->music_playpause_two:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$38(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 3148
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->tvMusicName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$39(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 3149
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->tvMusicNameTwo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/launcher4/Launcher;)Landroid/view/View;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mInitNaviInfoView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$40(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 3149
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->tvAritst:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$41(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 3149
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->tvAlbum:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$42(Lcom/android/launcher4/Launcher;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 3158
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->musicSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$43(Lcom/android/launcher4/Launcher;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 3159
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->musicProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$44(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 3148
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->tvCurTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$45(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 3148
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->tvTotalTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$46(Lcom/android/launcher4/Launcher;I)V
    .locals 0

    .prologue
    .line 4699
    iput p1, p0, Lcom/android/launcher4/Launcher;->radioBand:I

    return-void
.end method

.method static synthetic access$47(Lcom/android/launcher4/Launcher;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4735
    invoke-direct {p0, p1}, Lcom/android/launcher4/Launcher;->freqToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$48(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 3148
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->tvCurFreq:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$49(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 3149
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->tvBand:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/launcher4/Launcher;)Landroid/view/View;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mNaviRunView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$50(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 3149
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->tvUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$51(Lcom/android/launcher4/Launcher;)Lcom/fyt/widget/RadioRuler;
    .locals 1

    .prologue
    .line 3157
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->img_freq_point:Lcom/fyt/widget/RadioRuler;

    return-object v0
.end method

.method static synthetic access$52(Lcom/android/launcher4/Launcher;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3155
    iput-object p1, p0, Lcom/android/launcher4/Launcher;->mVideoPlayState:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$53(Lcom/android/launcher4/Launcher;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 3154
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->video_playpause:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$54(Lcom/android/launcher4/Launcher;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3155
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mVideoPlayState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$55(Lcom/android/launcher4/Launcher;Z)V
    .locals 0

    .prologue
    .line 401
    iput-boolean p1, p0, Lcom/android/launcher4/Launcher;->mUserPresent:Z

    return-void
.end method

.method static synthetic access$56(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/DragLayer;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mDragLayer:Lcom/android/launcher4/DragLayer;

    return-object v0
.end method

.method static synthetic access$57(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 5233
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->updateRunning()V

    return-void
.end method

.method static synthetic access$58(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/AppsCustomizeTabHost;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher4/AppsCustomizeTabHost;

    return-object v0
.end method

.method static synthetic access$59(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/ItemInfo;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    return-object v0
.end method

.method static synthetic access$6(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$60(Lcom/android/launcher4/Launcher;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$61(Lcom/android/launcher4/Launcher;J)V
    .locals 1

    .prologue
    .line 5226
    invoke-direct {p0, p1, p2}, Lcom/android/launcher4/Launcher;->sendAdvanceMessage(J)V

    return-void
.end method

.method static synthetic access$62(Lcom/android/launcher4/Launcher;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 8695
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mWidgetsAndShortcuts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$63(Lcom/android/launcher4/Launcher;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 8695
    iput-object p1, p0, Lcom/android/launcher4/Launcher;->mWidgetsAndShortcuts:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$64(Lcom/android/launcher4/Launcher;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 5256
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$65(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 2414
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->adasCarDist()V

    return-void
.end method

.method static synthetic access$66(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 2448
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->adasLeft()V

    return-void
.end method

.method static synthetic access$67(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 2471
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->adasRight()V

    return-void
.end method

.method static synthetic access$68(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 2373
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->adasFrontCar()V

    return-void
.end method

.method static synthetic access$69(Lcom/android/launcher4/Launcher;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 3160
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mCurCityView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$70(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 5920
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$71(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->weatherImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$72(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->weatherCity:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$73(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->weatherWeather:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$74(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->weatherTemp:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$75(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->weatherWind:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$76(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->weatherTempRange:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$77(Landroid/content/Context;Lcom/android/launcher4/Launcher$LocaleConfiguration;)V
    .locals 0

    .prologue
    .line 1081
    invoke-static {p0, p1}, Lcom/android/launcher4/Launcher;->readConfiguration(Landroid/content/Context;Lcom/android/launcher4/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$78(Lcom/android/launcher4/Launcher$LocaleConfiguration;)V
    .locals 0

    .prologue
    .line 408
    sput-object p0, Lcom/android/launcher4/Launcher;->sLocaleConfiguration:Lcom/android/launcher4/Launcher$LocaleConfiguration;

    return-void
.end method

.method static synthetic access$79(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 1024
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->checkForLocaleChange()V

    return-void
.end method

.method static synthetic access$8(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mCurDis_RemainView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$80(Landroid/content/Context;Lcom/android/launcher4/Launcher$LocaleConfiguration;)V
    .locals 0

    .prologue
    .line 1104
    invoke-static {p0, p1}, Lcom/android/launcher4/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/android/launcher4/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$81(Lcom/android/launcher4/Launcher;IJJLandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0

    .prologue
    .line 5030
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher4/Launcher;->completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    return-void
.end method

.method static synthetic access$82(Lcom/android/launcher4/Launcher;)Landroid/view/View;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->adasView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$83(Lcom/android/launcher4/Launcher;)Landroid/view/View;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mapSpeed:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$84(Lcom/android/launcher4/Launcher;IZ)V
    .locals 0

    .prologue
    .line 2507
    invoke-direct {p0, p1, p2}, Lcom/android/launcher4/Launcher;->endAnimation(IZ)V

    return-void
.end method

.method static synthetic access$85(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mRoad:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$86(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->ivFrontCar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$87(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->ivleft:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$88(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 2340
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->updateRoad()V

    return-void
.end method

.method static synthetic access$89(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->ivRight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mCurDis_AllView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$90(Lcom/android/launcher4/Launcher;)J
    .locals 2

    .prologue
    .line 3786
    iget-wide v0, p0, Lcom/android/launcher4/Launcher;->mCurTime:J

    return-wide v0
.end method

.method static synthetic access$91(Lcom/android/launcher4/Launcher;J)V
    .locals 1

    .prologue
    .line 3786
    iput-wide p1, p0, Lcom/android/launcher4/Launcher;->mLastTime:J

    return-void
.end method

.method static synthetic access$92(Lcom/android/launcher4/Launcher;J)V
    .locals 1

    .prologue
    .line 3786
    iput-wide p1, p0, Lcom/android/launcher4/Launcher;->mCurTime:J

    return-void
.end method

.method static synthetic access$93(Lcom/android/launcher4/Launcher;)J
    .locals 2

    .prologue
    .line 3786
    iget-wide v0, p0, Lcom/android/launcher4/Launcher;->mLastTime:J

    return-wide v0
.end method

.method static synthetic access$94(Lcom/android/launcher4/Launcher;)I
    .locals 1

    .prologue
    .line 3787
    iget v0, p0, Lcom/android/launcher4/Launcher;->clickIndex:I

    return v0
.end method

.method static synthetic access$95(Lcom/android/launcher4/Launcher;I)V
    .locals 0

    .prologue
    .line 3787
    iput p1, p0, Lcom/android/launcher4/Launcher;->clickIndex:I

    return-void
.end method

.method static synthetic access$96(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 2168
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->randomSpeed()V

    return-void
.end method

.method static synthetic access$97()Lcn/kuwo/autosdk/api/KWAPI;
    .locals 1

    .prologue
    .line 339
    sget-object v0, Lcom/android/launcher4/Launcher;->kwAPi:Lcn/kuwo/autosdk/api/KWAPI;

    return-object v0
.end method

.method static synthetic access$98(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 3812
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->needStartKuwo()V

    return-void
.end method

.method static synthetic access$99(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mAppWidgetHost:Lcom/android/launcher4/LauncherAppWidgetHost;

    return-object v0
.end method

.method private adasCarDist()V
    .locals 4

    .prologue
    .line 2415
    const/high16 v0, 0x7f050000

    iget-object v1, p0, Lcom/android/launcher4/Launcher;->ivRight:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/launcher4/Launcher$32;

    invoke-direct {v2, p0}, Lcom/android/launcher4/Launcher$32;-><init>(Lcom/android/launcher4/Launcher;)V

    .line 2428
    new-instance v3, Lcom/android/launcher4/Launcher$33;

    invoke-direct {v3, p0}, Lcom/android/launcher4/Launcher$33;-><init>(Lcom/android/launcher4/Launcher;)V

    .line 2415
    invoke-static {v0, v1, v2, v3}, Lcom/syu/util/AnimationUitls;->animateRawManuallyFromXML(ILandroid/widget/ImageView;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 2447
    return-void
.end method

.method private adasFrontCar()V
    .locals 4

    .prologue
    .line 2374
    const v0, 0x7f050001

    iget-object v1, p0, Lcom/android/launcher4/Launcher;->ivFrontCar:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/launcher4/Launcher$30;

    invoke-direct {v2, p0}, Lcom/android/launcher4/Launcher$30;-><init>(Lcom/android/launcher4/Launcher;)V

    .line 2388
    new-instance v3, Lcom/android/launcher4/Launcher$31;

    invoke-direct {v3, p0}, Lcom/android/launcher4/Launcher$31;-><init>(Lcom/android/launcher4/Launcher;)V

    .line 2374
    invoke-static {v0, v1, v2, v3}, Lcom/syu/util/AnimationUitls;->animateRawManuallyFromXML(ILandroid/widget/ImageView;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 2412
    return-void
.end method

.method private adasLeft()V
    .locals 4

    .prologue
    .line 2449
    const v0, 0x7f050002

    iget-object v1, p0, Lcom/android/launcher4/Launcher;->ivleft:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/launcher4/Launcher$34;

    invoke-direct {v2, p0}, Lcom/android/launcher4/Launcher$34;-><init>(Lcom/android/launcher4/Launcher;)V

    .line 2459
    new-instance v3, Lcom/android/launcher4/Launcher$35;

    invoke-direct {v3, p0}, Lcom/android/launcher4/Launcher$35;-><init>(Lcom/android/launcher4/Launcher;)V

    .line 2449
    invoke-static {v0, v1, v2, v3}, Lcom/syu/util/AnimationUitls;->animateRawManuallyFromXML(ILandroid/widget/ImageView;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 2469
    return-void
.end method

.method private adasRight()V
    .locals 4

    .prologue
    .line 2472
    const v0, 0x7f050003

    iget-object v1, p0, Lcom/android/launcher4/Launcher;->ivRight:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/launcher4/Launcher$36;

    invoke-direct {v2, p0}, Lcom/android/launcher4/Launcher$36;-><init>(Lcom/android/launcher4/Launcher;)V

    .line 2482
    new-instance v3, Lcom/android/launcher4/Launcher$37;

    invoke-direct {v3, p0}, Lcom/android/launcher4/Launcher$37;-><init>(Lcom/android/launcher4/Launcher;)V

    .line 2472
    invoke-static {v0, v1, v2, v3}, Lcom/syu/util/AnimationUitls;->animateRawManuallyFromXML(ILandroid/widget/ImageView;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 2492
    return-void
.end method

.method public static addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "debugLog"    # Z

    .prologue
    .line 9299
    if-eqz p2, :cond_0

    .line 9300
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9309
    :cond_0
    return-void
.end method

.method private bindOnclickListener()V
    .locals 2

    .prologue
    .line 3838
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mRadioPrevButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 3839
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mRadioPrevButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/launcher4/Launcher$52;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$52;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3853
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mRadioPauseButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 3854
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mRadioPauseButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/launcher4/Launcher$53;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$53;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3868
    :cond_1
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mRadioNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 3870
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mRadioNextButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/launcher4/Launcher$54;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$54;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3885
    :cond_2
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mMusicPrevButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 3886
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mMusicPrevButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/launcher4/Launcher$55;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$55;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3899
    :cond_3
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mMusicPrevButtonTwo:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 3900
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mMusicPrevButtonTwo:Landroid/widget/Button;

    new-instance v1, Lcom/android/launcher4/Launcher$56;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$56;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3914
    :cond_4
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mMusicNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 3915
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mMusicNextButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/launcher4/Launcher$57;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$57;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3928
    :cond_5
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mMusicNextButtonTwo:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 3929
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mMusicNextButtonTwo:Landroid/widget/Button;

    new-instance v1, Lcom/android/launcher4/Launcher$58;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$58;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3943
    :cond_6
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->music_playpause:Landroid/widget/Button;

    if-eqz v0, :cond_7

    .line 3944
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->music_playpause:Landroid/widget/Button;

    new-instance v1, Lcom/android/launcher4/Launcher$59;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$59;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3957
    :cond_7
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->music_playpause_two:Landroid/widget/Button;

    if-eqz v0, :cond_8

    .line 3958
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->music_playpause_two:Landroid/widget/Button;

    new-instance v1, Lcom/android/launcher4/Launcher$60;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$60;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3971
    :cond_8
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->kuwomusic_playpause:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 3972
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->kuwomusic_playpause:Landroid/widget/Button;

    new-instance v1, Lcom/android/launcher4/Launcher$61;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$61;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3989
    :cond_9
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->kuwomusic_prev:Landroid/widget/Button;

    if-eqz v0, :cond_a

    .line 3990
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->kuwomusic_prev:Landroid/widget/Button;

    new-instance v1, Lcom/android/launcher4/Launcher$62;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$62;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4004
    :cond_a
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->kuwomusic_next:Landroid/widget/Button;

    if-eqz v0, :cond_b

    .line 4005
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->kuwomusic_next:Landroid/widget/Button;

    new-instance v1, Lcom/android/launcher4/Launcher$63;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$63;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4020
    :cond_b
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mBtavPrevButton:Landroid/widget/Button;

    if-eqz v0, :cond_c

    .line 4021
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mBtavPrevButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/launcher4/Launcher$64;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$64;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4035
    :cond_c
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mBtavNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_d

    .line 4036
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mBtavNextButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/launcher4/Launcher$65;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$65;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4050
    :cond_d
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mBtavPlayPauseButton:Landroid/widget/Button;

    if-eqz v0, :cond_e

    .line 4051
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mBtavPlayPauseButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/launcher4/Launcher$66;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$66;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4065
    :cond_e
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mBtavIcon:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 4066
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mBtavIcon:Landroid/view/View;

    new-instance v1, Lcom/android/launcher4/Launcher$67;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$67;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4079
    :cond_f
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mRadioIcon:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 4080
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mRadioIcon:Landroid/view/View;

    new-instance v1, Lcom/android/launcher4/Launcher$68;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$68;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4091
    :cond_10
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mMusicIcon:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 4092
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mMusicIcon:Landroid/view/View;

    new-instance v1, Lcom/android/launcher4/Launcher$69;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$69;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4104
    :cond_11
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mNaviView:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 4105
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mNaviView:Landroid/view/View;

    new-instance v1, Lcom/android/launcher4/Launcher$70;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$70;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4121
    :cond_12
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->video_playpause:Landroid/widget/Button;

    if-eqz v0, :cond_13

    .line 4122
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->video_playpause:Landroid/widget/Button;

    new-instance v1, Lcom/android/launcher4/Launcher$71;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$71;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4143
    :cond_13
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->video_prev:Landroid/widget/Button;

    if-eqz v0, :cond_14

    .line 4144
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->video_prev:Landroid/widget/Button;

    new-instance v1, Lcom/android/launcher4/Launcher$72;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$72;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4155
    :cond_14
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->video_next:Landroid/widget/Button;

    if-eqz v0, :cond_15

    .line 4156
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->video_next:Landroid/widget/Button;

    new-instance v1, Lcom/android/launcher4/Launcher$73;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$73;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4166
    :cond_15
    return-void
.end method

.method private canRunNewAppsAnimation()Z
    .locals 6

    .prologue
    .line 8582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 8583
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mDragController:Lcom/android/launcher4/DragController;

    invoke-virtual {v4}, Lcom/android/launcher4/DragController;->getLastGestureUpTime()J

    move-result-wide v4

    .line 8582
    sub-long v0, v2, v4

    .line 8584
    .local v0, "diff":J
    sget v2, Lcom/android/launcher4/Launcher;->NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkForLocaleChange()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 1025
    sget-object v9, Lcom/android/launcher4/Launcher;->sLocaleConfiguration:Lcom/android/launcher4/Launcher$LocaleConfiguration;

    if-nez v9, :cond_1

    .line 1026
    new-instance v9, Lcom/android/launcher4/Launcher$20;

    invoke-direct {v9, p0}, Lcom/android/launcher4/Launcher$20;-><init>(Lcom/android/launcher4/Launcher;)V

    new-array v10, v2, [Ljava/lang/Void;

    .line 1040
    invoke-virtual {v9, v10}, Lcom/android/launcher4/Launcher$20;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1073
    :cond_0
    :goto_0
    return-void

    .line 1044
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1046
    .local v0, "configuration":Landroid/content/res/Configuration;
    sget-object v9, Lcom/android/launcher4/Launcher;->sLocaleConfiguration:Lcom/android/launcher4/Launcher$LocaleConfiguration;

    iget-object v6, v9, Lcom/android/launcher4/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1047
    .local v6, "previousLocale":Ljava/lang/String;
    iget-object v9, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1049
    .local v1, "locale":Ljava/lang/String;
    sget-object v9, Lcom/android/launcher4/Launcher;->sLocaleConfiguration:Lcom/android/launcher4/Launcher$LocaleConfiguration;

    iget v7, v9, Lcom/android/launcher4/Launcher$LocaleConfiguration;->mcc:I

    .line 1050
    .local v7, "previousMcc":I
    iget v4, v0, Landroid/content/res/Configuration;->mcc:I

    .line 1052
    .local v4, "mcc":I
    sget-object v9, Lcom/android/launcher4/Launcher;->sLocaleConfiguration:Lcom/android/launcher4/Launcher$LocaleConfiguration;

    iget v8, v9, Lcom/android/launcher4/Launcher$LocaleConfiguration;->mnc:I

    .line 1053
    .local v8, "previousMnc":I
    iget v5, v0, Landroid/content/res/Configuration;->mnc:I

    .line 1055
    .local v5, "mnc":I
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1056
    if-ne v4, v7, :cond_2

    if-ne v5, v8, :cond_2

    .line 1058
    .local v2, "localeChanged":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 1059
    sget-object v9, Lcom/android/launcher4/Launcher;->sLocaleConfiguration:Lcom/android/launcher4/Launcher$LocaleConfiguration;

    iput-object v1, v9, Lcom/android/launcher4/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1060
    sget-object v9, Lcom/android/launcher4/Launcher;->sLocaleConfiguration:Lcom/android/launcher4/Launcher$LocaleConfiguration;

    iput v4, v9, Lcom/android/launcher4/Launcher$LocaleConfiguration;->mcc:I

    .line 1061
    sget-object v9, Lcom/android/launcher4/Launcher;->sLocaleConfiguration:Lcom/android/launcher4/Launcher$LocaleConfiguration;

    iput v5, v9, Lcom/android/launcher4/Launcher$LocaleConfiguration;->mnc:I

    .line 1063
    iget-object v9, p0, Lcom/android/launcher4/Launcher;->mIconCache:Lcom/android/launcher4/IconCache;

    invoke-virtual {v9}, Lcom/android/launcher4/IconCache;->flush()V

    .line 1065
    sget-object v3, Lcom/android/launcher4/Launcher;->sLocaleConfiguration:Lcom/android/launcher4/Launcher$LocaleConfiguration;

    .line 1066
    .local v3, "localeConfiguration":Lcom/android/launcher4/Launcher$LocaleConfiguration;
    new-instance v9, Lcom/android/launcher4/Launcher$21;

    const-string v10, "WriteLocaleConfiguration"

    invoke-direct {v9, p0, v10, v3}, Lcom/android/launcher4/Launcher$21;-><init>(Lcom/android/launcher4/Launcher;Ljava/lang/String;Lcom/android/launcher4/Launcher$LocaleConfiguration;)V

    .line 1071
    invoke-virtual {v9}, Lcom/android/launcher4/Launcher$21;->start()V

    goto :goto_0

    .line 1055
    .end local v2    # "localeChanged":Z
    .end local v3    # "localeConfiguration":Lcom/android/launcher4/Launcher$LocaleConfiguration;
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private clearGaoDeData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 4201
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mCurCityView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4202
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mCurCityView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4204
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mInitNaviInfoView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4206
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mInitNaviInfoView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4208
    :cond_1
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mNaviRunView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 4209
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mNaviRunView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4211
    :cond_2
    sput v3, Lcom/android/launcher4/MyAutoMapReceiver;->mCurSpeed:I

    .line 4213
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 4214
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    .line 4215
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->default_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4218
    :cond_3
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mCurDis_RemainView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 4219
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mCurDis_RemainView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4222
    :cond_4
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mCurRemainTimeView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 4223
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mCurRemainTimeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4225
    :cond_5
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mCurDis_AllView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 4226
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mCurDis_AllView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4229
    :cond_6
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mCamera_DisView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 4230
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mCamera_DisView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4232
    :cond_7
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mCamera_DisImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 4233
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mCamera_DisImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4235
    :cond_8
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mCurRoadNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 4236
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mCurRoadNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4238
    :cond_9
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mNextRoadNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 4239
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mNextRoadNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4241
    :cond_a
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mMapbgUnitView:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 4242
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mMapbgUnitView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4244
    :cond_b
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mNaviMycar:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 4245
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mNaviMycar:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4247
    :cond_c
    return-void
.end method

.method private clearTypedText()V
    .locals 2

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2735
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2736
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2737
    return-void
.end method

.method private completeAdd(Lcom/android/launcher4/Launcher$PendingAddArguments;)Z
    .locals 9
    .param p1, "args"    # Lcom/android/launcher4/Launcher$PendingAddArguments;

    .prologue
    const/4 v6, 0x0

    .line 1171
    const/4 v8, 0x0

    .line 1172
    .local v8, "result":Z
    iget v0, p1, Lcom/android/launcher4/Launcher$PendingAddArguments;->requestCode:I

    packed-switch v0, :pswitch_data_0

    .line 1199
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->resetAddInfo()V

    .line 1200
    return v8

    .line 1174
    :pswitch_1
    iget-object v1, p1, Lcom/android/launcher4/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lcom/android/launcher4/Launcher$PendingAddArguments;->container:J

    iget-wide v4, p1, Lcom/android/launcher4/Launcher$PendingAddArguments;->screenId:J

    .line 1175
    iget v6, p1, Lcom/android/launcher4/Launcher$PendingAddArguments;->cellX:I

    iget v7, p1, Lcom/android/launcher4/Launcher$PendingAddArguments;->cellY:I

    move-object v0, p0

    .line 1174
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher4/Launcher;->completeAddApplication(Landroid/content/Intent;JJII)V

    goto :goto_0

    .line 1178
    :pswitch_2
    iget-object v0, p1, Lcom/android/launcher4/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Launcher;->processShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 1181
    :pswitch_3
    iget-object v1, p1, Lcom/android/launcher4/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lcom/android/launcher4/Launcher$PendingAddArguments;->container:J

    iget-wide v4, p1, Lcom/android/launcher4/Launcher$PendingAddArguments;->screenId:J

    .line 1182
    iget v6, p1, Lcom/android/launcher4/Launcher$PendingAddArguments;->cellX:I

    iget v7, p1, Lcom/android/launcher4/Launcher$PendingAddArguments;->cellY:I

    move-object v0, p0

    .line 1181
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher4/Launcher;->completeAddShortcut(Landroid/content/Intent;JJII)V

    .line 1183
    const/4 v8, 0x1

    .line 1184
    goto :goto_0

    .line 1186
    :pswitch_4
    iget-object v0, p1, Lcom/android/launcher4/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    .line 1187
    const-string v2, "appWidgetId"

    const/4 v3, -0x1

    .line 1186
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1188
    .local v1, "appWidgetId":I
    iget-wide v2, p1, Lcom/android/launcher4/Launcher$PendingAddArguments;->container:J

    iget-wide v4, p1, Lcom/android/launcher4/Launcher$PendingAddArguments;->screenId:J

    move-object v0, p0

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher4/Launcher;->completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 1190
    const/4 v8, 0x1

    goto :goto_0

    .line 1172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 34
    .param p1, "appWidgetId"    # I
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "hostView"    # Landroid/appwidget/AppWidgetHostView;
    .param p7, "appWidgetInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 5033
    if-nez p7, :cond_0

    .line 5034
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p7

    .line 5038
    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher4/Launcher;->getCellLayout(JJ)Lcom/android/launcher4/CellLayout;

    move-result-object v6

    .line 5040
    .local v6, "layout":Lcom/android/launcher4/CellLayout;
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-static {v0, v1}, Lcom/android/launcher4/Launcher;->getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v29

    .line 5041
    .local v29, "minSpanXY":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-static {v0, v1}, Lcom/android/launcher4/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v31

    .line 5047
    .local v31, "spanXY":[I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher4/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 5048
    .local v13, "cellXY":[I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget-object v0, v7, Lcom/android/launcher4/ItemInfo;->dropPos:[I

    move-object/from16 v32, v0

    .line 5049
    .local v32, "touchXY":[I
    const/4 v7, 0x2

    new-array v14, v7, [I

    .line 5050
    .local v14, "finalSpan":[I
    const/4 v15, 0x0

    .line 5051
    .local v15, "foundCellSpan":Z
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget v7, v7, Lcom/android/launcher4/ItemInfo;->cellX:I

    if-ltz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget v7, v7, Lcom/android/launcher4/ItemInfo;->cellY:I

    if-ltz v7, :cond_2

    .line 5052
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget v8, v8, Lcom/android/launcher4/ItemInfo;->cellX:I

    aput v8, v13, v7

    .line 5053
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget v8, v8, Lcom/android/launcher4/ItemInfo;->cellY:I

    aput v8, v13, v7

    .line 5054
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget v8, v8, Lcom/android/launcher4/ItemInfo;->spanX:I

    aput v8, v31, v7

    .line 5055
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget v8, v8, Lcom/android/launcher4/ItemInfo;->spanY:I

    aput v8, v31, v7

    .line 5056
    const/4 v15, 0x1

    .line 5070
    :goto_0
    if-nez v15, :cond_5

    .line 5071
    const/4 v7, -0x1

    move/from16 v0, p1

    if-eq v0, v7, :cond_1

    .line 5075
    new-instance v7, Lcom/android/launcher4/Launcher$74;

    const-string v8, "deleteAppWidgetId"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v7, v0, v8, v1}, Lcom/android/launcher4/Launcher$74;-><init>(Lcom/android/launcher4/Launcher;Ljava/lang/String;I)V

    .line 5079
    invoke-virtual {v7}, Lcom/android/launcher4/Launcher$74;->start()V

    .line 5081
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher4/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher4/Launcher;->showOutOfSpaceMessage(Z)V

    .line 5119
    :goto_1
    return-void

    .line 5057
    :cond_2
    if-eqz v32, :cond_4

    .line 5059
    const/4 v7, 0x0

    aget v7, v32, v7

    const/4 v8, 0x1

    aget v8, v32, v8

    .line 5060
    const/4 v9, 0x0

    aget v9, v29, v9

    const/4 v10, 0x1

    aget v10, v29, v10

    const/4 v11, 0x0

    aget v11, v31, v11

    const/4 v12, 0x1

    aget v12, v31, v12

    .line 5059
    invoke-virtual/range {v6 .. v14}, Lcom/android/launcher4/CellLayout;->findNearestVacantArea(IIIIII[I[I)[I

    move-result-object v30

    .line 5062
    .local v30, "result":[I
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v14, v8

    aput v8, v31, v7

    .line 5063
    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v14, v8

    aput v8, v31, v7

    .line 5064
    if-eqz v30, :cond_3

    const/4 v15, 0x1

    .line 5065
    :goto_2
    goto :goto_0

    .line 5064
    :cond_3
    const/4 v15, 0x0

    goto :goto_2

    .line 5066
    .end local v30    # "result":[I
    :cond_4
    const/4 v7, 0x0

    aget v7, v29, v7

    .line 5067
    const/4 v8, 0x1

    aget v8, v29, v8

    .line 5066
    invoke-virtual {v6, v13, v7, v8}, Lcom/android/launcher4/CellLayout;->findCellForSpan([III)Z

    move-result v15

    goto :goto_0

    .line 5086
    :cond_5
    new-instance v17, Lcom/android/launcher4/LauncherAppWidgetInfo;

    .line 5087
    move-object/from16 v0, p7

    iget-object v7, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 5086
    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/android/launcher4/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 5088
    .local v17, "launcherInfo":Lcom/android/launcher4/LauncherAppWidgetInfo;
    const/4 v7, 0x0

    aget v7, v31, v7

    move-object/from16 v0, v17

    iput v7, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->spanX:I

    .line 5089
    const/4 v7, 0x1

    aget v7, v31, v7

    move-object/from16 v0, v17

    iput v7, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->spanY:I

    .line 5090
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget v7, v7, Lcom/android/launcher4/ItemInfo;->minSpanX:I

    move-object/from16 v0, v17

    iput v7, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->minSpanX:I

    .line 5091
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget v7, v7, Lcom/android/launcher4/ItemInfo;->minSpanY:I

    move-object/from16 v0, v17

    iput v7, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->minSpanY:I

    .line 5094
    const/4 v7, 0x0

    aget v22, v13, v7

    const/4 v7, 0x1

    aget v23, v13, v7

    const/16 v24, 0x0

    move-object/from16 v16, p0

    move-wide/from16 v18, p2

    move-wide/from16 v20, p4

    .line 5093
    invoke-static/range {v16 .. v24}, Lcom/android/launcher4/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;JJIIZ)V

    .line 5096
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/launcher4/Launcher;->mRestoring:Z

    if-nez v7, :cond_6

    .line 5097
    if-nez p6, :cond_7

    .line 5099
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/Launcher;->mAppWidgetHost:Lcom/android/launcher4/LauncherAppWidgetHost;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p7

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/launcher4/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v7

    move-object/from16 v0, v17

    iput-object v7, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 5101
    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v7, v0, v1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 5108
    :goto_3
    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 5109
    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    .line 5110
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher4/LauncherAppWidgetInfo;->notifyWidgetSizeChanged(Lcom/android/launcher4/Launcher;)V

    .line 5112
    sget-object v18, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v19, v0

    .line 5113
    const/4 v7, 0x0

    aget v24, v13, v7

    const/4 v7, 0x1

    aget v25, v13, v7

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->spanX:I

    move/from16 v26, v0

    .line 5114
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->spanY:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->isWorkspaceLocked()Z

    move-result v28

    move-wide/from16 v20, p2

    move-wide/from16 v22, p4

    .line 5112
    invoke-virtual/range {v18 .. v28}, Lcom/android/launcher4/Workspace;->addInScreen(Landroid/view/View;JJIIIIZ)V

    .line 5116
    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v7, v1}, Lcom/android/launcher4/Launcher;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 5118
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->resetAddInfo()V

    goto/16 :goto_1

    .line 5105
    :cond_7
    move-object/from16 v0, p6

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/launcher4/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    goto :goto_3
.end method

.method private completeAddShortcut(Landroid/content/Intent;JJII)V
    .locals 30
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I

    .prologue
    .line 4936
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher4/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 4937
    .local v11, "cellXY":[I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget-object v0, v6, Lcom/android/launcher4/ItemInfo;->dropPos:[I

    move-object/from16 v28, v0

    .line 4938
    .local v28, "touchXY":[I
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher4/Launcher;->getCellLayout(JJ)Lcom/android/launcher4/CellLayout;

    move-result-object v10

    .line 4940
    .local v10, "layout":Lcom/android/launcher4/CellLayout;
    const/16 v25, 0x0

    .line 4942
    .local v25, "foundCellSpan":Z
    sget-object v6, Lcom/android/launcher4/Launcher;->mModel:Lcom/android/launcher4/LauncherModel;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v6, v0, v1, v8}, Lcom/android/launcher4/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher4/ShortcutInfo;

    move-result-object v26

    .line 4943
    .local v26, "info":Lcom/android/launcher4/ShortcutInfo;
    if-nez v26, :cond_1

    .line 4988
    :cond_0
    :goto_0
    return-void

    .line 4946
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->createShortcut(Lcom/android/launcher4/ShortcutInfo;)Landroid/view/View;

    move-result-object v7

    .line 4950
    .local v7, "view":Landroid/view/View;
    if-ltz p6, :cond_2

    if-ltz p7, :cond_2

    .line 4951
    const/4 v6, 0x0

    aput p6, v11, v6

    .line 4952
    const/4 v6, 0x1

    aput p7, v11, v6

    .line 4953
    const/16 v25, 0x1

    .line 4957
    sget-object v6, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 4958
    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v8, p2

    .line 4957
    invoke-virtual/range {v6 .. v15}, Lcom/android/launcher4/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher4/CellLayout;[IFZLcom/android/launcher4/DragView;Ljava/lang/Runnable;)Z

    move-result v6

    .line 4958
    if-nez v6, :cond_0

    .line 4961
    new-instance v13, Lcom/android/launcher4/DropTarget$DragObject;

    invoke-direct {v13}, Lcom/android/launcher4/DropTarget$DragObject;-><init>()V

    .line 4962
    .local v13, "dragObject":Lcom/android/launcher4/DropTarget$DragObject;
    move-object/from16 v0, v26

    iput-object v0, v13, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 4963
    sget-object v8, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 4964
    const/4 v12, 0x0

    const/4 v14, 0x1

    move-object v9, v7

    .line 4963
    invoke-virtual/range {v8 .. v14}, Lcom/android/launcher4/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher4/CellLayout;[IFLcom/android/launcher4/DropTarget$DragObject;Z)Z

    move-result v6

    .line 4964
    if-nez v6, :cond_0

    .line 4976
    .end local v13    # "dragObject":Lcom/android/launcher4/DropTarget$DragObject;
    :goto_1
    if-nez v25, :cond_5

    .line 4977
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher4/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher4/Launcher;->showOutOfSpaceMessage(Z)V

    goto :goto_0

    .line 4967
    :cond_2
    if-eqz v28, :cond_4

    .line 4969
    const/4 v6, 0x0

    aget v15, v28, v6

    const/4 v6, 0x1

    aget v16, v28, v6

    .line 4970
    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object v14, v10

    move-object/from16 v19, v11

    .line 4969
    invoke-virtual/range {v14 .. v19}, Lcom/android/launcher4/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v27

    .line 4971
    .local v27, "result":[I
    if-eqz v27, :cond_3

    const/16 v25, 0x1

    .line 4972
    :goto_2
    goto :goto_1

    .line 4971
    :cond_3
    const/16 v25, 0x0

    goto :goto_2

    .line 4973
    .end local v27    # "result":[I
    :cond_4
    const/4 v6, 0x1

    const/4 v8, 0x1

    invoke-virtual {v10, v11, v6, v8}, Lcom/android/launcher4/CellLayout;->findCellForSpan([III)Z

    move-result v25

    goto :goto_1

    .line 4982
    :cond_5
    const/4 v6, 0x0

    aget v20, v11, v6

    const/4 v6, 0x1

    aget v21, v11, v6

    const/16 v22, 0x0

    move-object/from16 v14, p0

    move-object/from16 v15, v26

    move-wide/from16 v16, p2

    move-wide/from16 v18, p4

    .line 4981
    invoke-static/range {v14 .. v22}, Lcom/android/launcher4/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;JJIIZ)V

    .line 4984
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/launcher4/Launcher;->mRestoring:Z

    if-nez v6, :cond_0

    .line 4985
    sget-object v14, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    const/4 v6, 0x0

    aget v20, v11, v6

    .line 4986
    const/4 v6, 0x1

    aget v21, v11, v6

    const/16 v22, 0x1

    const/16 v23, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->isWorkspaceLocked()Z

    move-result v24

    move-object v15, v7

    move-wide/from16 v16, p2

    move-wide/from16 v18, p4

    .line 4985
    invoke-virtual/range {v14 .. v24}, Lcom/android/launcher4/Workspace;->addInScreen(Landroid/view/View;JJIIIIZ)V

    goto/16 :goto_0
.end method

.method private completeTwoStageWidgetDrop(II)V
    .locals 12
    .param p1, "resultCode"    # I
    .param p2, "appWidgetId"    # I

    .prologue
    .line 1502
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 1503
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget-wide v10, v1, Lcom/android/launcher4/ItemInfo;->screenId:J

    invoke-virtual {v0, v10, v11}, Lcom/android/launcher4/Workspace;->getScreenWithId(J)Lcom/android/launcher4/CellLayout;

    move-result-object v2

    .line 1504
    .local v2, "cellLayout":Lcom/android/launcher4/CellLayout;
    const/4 v4, 0x0

    .line 1505
    .local v4, "onCompleteRunnable":Ljava/lang/Runnable;
    const/4 v5, 0x0

    .line 1507
    .local v5, "animationType":I
    const/4 v6, 0x0

    .line 1508
    .local v6, "boundWidget":Landroid/appwidget/AppWidgetHostView;
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1509
    const/4 v5, 0x3

    .line 1510
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mAppWidgetHost:Lcom/android/launcher4/LauncherAppWidgetHost;

    .line 1511
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1510
    invoke-virtual {v0, p0, p2, v1}, Lcom/android/launcher4/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v8

    .line 1512
    .local v8, "layout":Landroid/appwidget/AppWidgetHostView;
    move-object v6, v8

    .line 1513
    new-instance v4, Lcom/android/launcher4/Launcher$23;

    .end local v4    # "onCompleteRunnable":Ljava/lang/Runnable;
    invoke-direct {v4, p0, p2, v8, p1}, Lcom/android/launcher4/Launcher$23;-><init>(Lcom/android/launcher4/Launcher;ILandroid/appwidget/AppWidgetHostView;I)V

    .line 1533
    .end local v8    # "layout":Landroid/appwidget/AppWidgetHostView;
    .restart local v4    # "onCompleteRunnable":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mDragLayer:Lcom/android/launcher4/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher4/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1534
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    .line 1535
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mDragLayer:Lcom/android/launcher4/DragLayer;

    invoke-virtual {v3}, Lcom/android/launcher4/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher4/DragView;

    .line 1536
    const/4 v7, 0x1

    .line 1534
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher4/Workspace;->animateWidgetDrop(Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/CellLayout;Lcom/android/launcher4/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 1542
    :goto_1
    return-void

    .line 1523
    :cond_1
    if-nez p1, :cond_0

    .line 1524
    const/4 v5, 0x4

    .line 1525
    new-instance v4, Lcom/android/launcher4/Launcher$24;

    .end local v4    # "onCompleteRunnable":Ljava/lang/Runnable;
    invoke-direct {v4, p0, p1}, Lcom/android/launcher4/Launcher$24;-><init>(Lcom/android/launcher4/Launcher;I)V

    .restart local v4    # "onCompleteRunnable":Ljava/lang/Runnable;
    goto :goto_0

    .line 1540
    :cond_2
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private copyFolderIconToImage(Lcom/android/launcher4/FolderIcon;)V
    .locals 7
    .param p1, "fi"    # Lcom/android/launcher4/FolderIcon;

    .prologue
    .line 6861
    invoke-virtual {p1}, Lcom/android/launcher4/FolderIcon;->getMeasuredWidth()I

    move-result v3

    .line 6862
    .local v3, "width":I
    invoke-virtual {p1}, Lcom/android/launcher4/FolderIcon;->getMeasuredHeight()I

    move-result v0

    .line 6865
    .local v0, "height":I
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    if-nez v4, :cond_0

    .line 6866
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/launcher4/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    .line 6868
    :cond_0
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 6869
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v0, :cond_2

    .line 6871
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6870
    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher4/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    .line 6872
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/launcher4/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/android/launcher4/Launcher;->mFolderIconCanvas:Landroid/graphics/Canvas;

    .line 6876
    :cond_2
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher4/DragLayer$LayoutParams;

    if-eqz v4, :cond_6

    .line 6877
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    .line 6878
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 6877
    check-cast v1, Lcom/android/launcher4/DragLayer$LayoutParams;

    .line 6886
    .local v1, "lp":Lcom/android/launcher4/DragLayer$LayoutParams;
    :goto_0
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mDragLayer:Lcom/android/launcher4/DragLayer;

    .line 6887
    iget-object v5, p0, Lcom/android/launcher4/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    .line 6886
    invoke-virtual {v4, p1, v5}, Lcom/android/launcher4/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v2

    .line 6888
    .local v2, "scale":F
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/launcher4/DragLayer$LayoutParams;->customPosition:Z

    .line 6889
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, v1, Lcom/android/launcher4/DragLayer$LayoutParams;->x:I

    .line 6890
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v1, Lcom/android/launcher4/DragLayer$LayoutParams;->y:I

    .line 6891
    int-to-float v4, v3

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, v1, Lcom/android/launcher4/DragLayer$LayoutParams;->width:I

    .line 6892
    int-to-float v4, v0

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, v1, Lcom/android/launcher4/DragLayer$LayoutParams;->height:I

    .line 6894
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mFolderIconCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 6895
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mFolderIconCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v4}, Lcom/android/launcher4/FolderIcon;->draw(Landroid/graphics/Canvas;)V

    .line 6896
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/launcher4/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6897
    invoke-virtual {p1}, Lcom/android/launcher4/FolderIcon;->getFolder()Lcom/android/launcher4/Folder;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 6898
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/launcher4/FolderIcon;->getFolder()Lcom/android/launcher4/Folder;

    move-result-object v5

    .line 6899
    invoke-virtual {v5}, Lcom/android/launcher4/Folder;->getPivotXForIconAnimation()F

    move-result v5

    .line 6898
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 6900
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/launcher4/FolderIcon;->getFolder()Lcom/android/launcher4/Folder;

    move-result-object v5

    .line 6901
    invoke-virtual {v5}, Lcom/android/launcher4/Folder;->getPivotYForIconAnimation()F

    move-result v5

    .line 6900
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 6906
    :cond_3
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mDragLayer:Lcom/android/launcher4/DragLayer;

    iget-object v5, p0, Lcom/android/launcher4/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/android/launcher4/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 6907
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mDragLayer:Lcom/android/launcher4/DragLayer;

    iget-object v5, p0, Lcom/android/launcher4/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/android/launcher4/DragLayer;->removeView(Landroid/view/View;)V

    .line 6909
    :cond_4
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mDragLayer:Lcom/android/launcher4/DragLayer;

    iget-object v5, p0, Lcom/android/launcher4/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v1}, Lcom/android/launcher4/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6910
    invoke-virtual {p1}, Lcom/android/launcher4/FolderIcon;->getFolder()Lcom/android/launcher4/Folder;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 6911
    invoke-virtual {p1}, Lcom/android/launcher4/FolderIcon;->getFolder()Lcom/android/launcher4/Folder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher4/Folder;->bringToFront()V

    .line 6913
    :cond_5
    return-void

    .line 6880
    .end local v1    # "lp":Lcom/android/launcher4/DragLayer$LayoutParams;
    .end local v2    # "scale":F
    :cond_6
    new-instance v1, Lcom/android/launcher4/DragLayer$LayoutParams;

    invoke-direct {v1, v3, v0}, Lcom/android/launcher4/DragLayer$LayoutParams;-><init>(II)V

    .restart local v1    # "lp":Lcom/android/launcher4/DragLayer$LayoutParams;
    goto/16 :goto_0
.end method

.method private createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "i"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 8588
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    .line 8589
    const-string v2, "alpha"

    new-array v3, v4, [F

    aput v6, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    .line 8590
    const-string v2, "scaleX"

    new-array v3, v4, [F

    aput v6, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    .line 8591
    const-string v3, "scaleY"

    new-array v4, v4, [F

    aput v6, v4, v5

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v1, v2

    .line 8588
    invoke-static {p1, v1}, Lcom/android/launcher4/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 8593
    .local v0, "bounceAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8595
    mul-int/lit8 v1, p2, 0x55

    int-to-long v2, v1

    .line 8594
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 8596
    new-instance v1, Lcom/android/launcher4/SmoothPagedView$OvershootInterpolator;

    invoke-direct {v1}, Lcom/android/launcher4/SmoothPagedView$OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8597
    return-object v0
.end method

.method private dismissCling(Lcom/android/launcher4/Cling;Ljava/lang/Runnable;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "cling"    # Lcom/android/launcher4/Cling;
    .param p2, "postAnimationCb"    # Ljava/lang/Runnable;
    .param p3, "flag"    # Ljava/lang/String;
    .param p4, "duration"    # I
    .param p5, "restoreNavBarVisibilty"    # Z

    .prologue
    .line 8949
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher4/Cling;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 8950
    new-instance v0, Lcom/android/launcher4/Launcher$102;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher4/Launcher$102;-><init>(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/Cling;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 8968
    .local v0, "cleanUpClingCb":Ljava/lang/Runnable;
    if-gtz p4, :cond_1

    .line 8969
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 8973
    :goto_0
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mHideFromAccessibilityHelper:Lcom/android/launcher4/HideFromAccessibilityHelper;

    .line 8974
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mDragLayer:Lcom/android/launcher4/DragLayer;

    invoke-virtual {v1, v2}, Lcom/android/launcher4/HideFromAccessibilityHelper;->restoreImportantForAccessibility(Landroid/view/View;)V

    .line 8976
    if-eqz p5, :cond_0

    .line 8977
    invoke-virtual {p1}, Lcom/android/launcher4/Cling;->getSystemUiVisibility()I

    move-result v1

    .line 8978
    and-int/lit8 v1, v1, -0x2

    .line 8977
    invoke-virtual {p1, v1}, Lcom/android/launcher4/Cling;->setSystemUiVisibility(I)V

    .line 8981
    .end local v0    # "cleanUpClingCb":Ljava/lang/Runnable;
    :cond_0
    return-void

    .line 8971
    .restart local v0    # "cleanUpClingCb":Ljava/lang/Runnable;
    :cond_1
    invoke-virtual {p1, p4, v0}, Lcom/android/launcher4/Cling;->hide(ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method private dismissClingApp(Lcom/android/launcher4/Cling;Ljava/lang/Runnable;Landroid/content/Intent;IZ)V
    .locals 3
    .param p1, "cling"    # Lcom/android/launcher4/Cling;
    .param p2, "postAnimationCb"    # Ljava/lang/Runnable;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "duration"    # I
    .param p5, "restoreNavBarVisibilty"    # Z

    .prologue
    .line 8841
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher4/Cling;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 8842
    new-instance v0, Lcom/android/launcher4/Launcher$101;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher4/Launcher$101;-><init>(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/Cling;Ljava/lang/Runnable;Landroid/content/Intent;)V

    .line 8931
    .local v0, "cleanUpClingCb":Ljava/lang/Runnable;
    if-gtz p4, :cond_1

    .line 8932
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 8936
    :goto_0
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mHideFromAccessibilityHelper:Lcom/android/launcher4/HideFromAccessibilityHelper;

    .line 8937
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mDragLayer:Lcom/android/launcher4/DragLayer;

    invoke-virtual {v1, v2}, Lcom/android/launcher4/HideFromAccessibilityHelper;->restoreImportantForAccessibility(Landroid/view/View;)V

    .line 8939
    if-eqz p5, :cond_0

    .line 8940
    invoke-virtual {p1}, Lcom/android/launcher4/Cling;->getSystemUiVisibility()I

    move-result v1

    .line 8941
    and-int/lit8 v1, v1, -0x2

    .line 8940
    invoke-virtual {p1, v1}, Lcom/android/launcher4/Cling;->setSystemUiVisibility(I)V

    .line 8944
    .end local v0    # "cleanUpClingCb":Ljava/lang/Runnable;
    :cond_0
    return-void

    .line 8934
    .restart local v0    # "cleanUpClingCb":Ljava/lang/Runnable;
    :cond_1
    invoke-virtual {p1, p4, v0}, Lcom/android/launcher4/Cling;->hide(ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method private dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 7276
    instance-of v0, p1, Lcom/android/launcher4/LauncherTransitionable;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 7277
    check-cast v0, Lcom/android/launcher4/LauncherTransitionable;

    invoke-interface {v0, p0, p2, p3}, Lcom/android/launcher4/LauncherTransitionable;->onLauncherTransitionEnd(Lcom/android/launcher4/Launcher;ZZ)V

    .line 7282
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/android/launcher4/Launcher;->dispatchOnLauncherTransitionStep(Landroid/view/View;F)V

    .line 7283
    return-void
.end method

.method private dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 7251
    instance-of v0, p1, Lcom/android/launcher4/LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 7252
    check-cast p1, Lcom/android/launcher4/LauncherTransitionable;

    .end local p1    # "v":Landroid/view/View;
    invoke-interface {p1, p0, p2, p3}, Lcom/android/launcher4/LauncherTransitionable;->onLauncherTransitionPrepare(Lcom/android/launcher4/Launcher;ZZ)V

    .line 7255
    :cond_0
    return-void
.end method

.method private dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 7259
    instance-of v0, p1, Lcom/android/launcher4/LauncherTransitionable;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 7260
    check-cast v0, Lcom/android/launcher4/LauncherTransitionable;

    invoke-interface {v0, p0, p2, p3}, Lcom/android/launcher4/LauncherTransitionable;->onLauncherTransitionStart(Lcom/android/launcher4/Launcher;ZZ)V

    .line 7265
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher4/Launcher;->dispatchOnLauncherTransitionStep(Landroid/view/View;F)V

    .line 7266
    return-void
.end method

.method private dispatchOnLauncherTransitionStep(Landroid/view/View;F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "t"    # F

    .prologue
    .line 7269
    instance-of v0, p1, Lcom/android/launcher4/LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 7270
    check-cast p1, Lcom/android/launcher4/LauncherTransitionable;

    .end local p1    # "v":Landroid/view/View;
    invoke-interface {p1, p0, p2}, Lcom/android/launcher4/LauncherTransitionable;->onLauncherTransitionStep(Lcom/android/launcher4/Launcher;F)V

    .line 7272
    :cond_0
    return-void
.end method

.method public static dumpDebugLogsToConsole()V
    .locals 0

    .prologue
    .line 9296
    return-void
.end method

.method private end10s()V
    .locals 4

    .prologue
    .line 2320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/Launcher;->isInEnd:Z

    .line 2321
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher4/Launcher$28;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$28;-><init>(Lcom/android/launcher4/Launcher;)V

    .line 2333
    const-wide/16 v2, 0x2710

    .line 2321
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2335
    return-void
.end method

.method private endAnimation(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "light"    # Z

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->imgAdas:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/launcher4/Launcher$40;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$40;-><init>(Lcom/android/launcher4/Launcher;)V

    .line 2514
    new-instance v2, Lcom/android/launcher4/Launcher$41;

    invoke-direct {v2, p0, p2}, Lcom/android/launcher4/Launcher$41;-><init>(Lcom/android/launcher4/Launcher;Z)V

    .line 2508
    invoke-static {p1, v0, v1, v2}, Lcom/syu/util/AnimationUitls;->animateRawManuallyFromXML(ILandroid/widget/ImageView;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 2524
    return-void
.end method

.method public static formatDuration(I)Ljava/lang/String;
    .locals 7
    .param p0, "duration"    # I

    .prologue
    .line 4431
    if-gtz p0, :cond_0

    .line 4432
    const-string v3, "00:00:00"

    .line 4438
    :goto_0
    return-object v3

    .line 4434
    :cond_0
    div-int/lit8 v3, p0, 0x3c

    rem-int/lit8 v1, v3, 0x3c

    .line 4435
    .local v1, "min":I
    div-int/lit8 v3, p0, 0x3c

    div-int/lit8 v0, v3, 0x3c

    .line 4436
    .local v0, "hour":I
    rem-int/lit8 v2, p0, 0x3c

    .line 4438
    .local v2, "second":I
    const-string v3, "%02d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private freqToString(I)Ljava/lang/String;
    .locals 4
    .param p1, "freq"    # I

    .prologue
    .line 4736
    int-to-float v2, p1

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v1, v2, v3

    .line 4737
    .local v1, "val":F
    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v2, v1

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 4738
    .local v0, "bd":Ljava/math/BigDecimal;
    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 4739
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private freqToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "freq"    # Ljava/lang/String;

    .prologue
    .line 4727
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 4729
    .local v2, "vals":F
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v1, v2, v3

    .line 4730
    .local v1, "val":F
    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v4, v1

    invoke-direct {v0, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    .line 4731
    .local v0, "bd":Ljava/math/BigDecimal;
    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 4732
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getCurrentOrientationIndexForGlobalIcons()I
    .locals 1

    .prologue
    .line 7804
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 7808
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 7806
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 7804
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private getExternalPackageToolbarIcon(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .param p2, "resourceName"    # Ljava/lang/String;

    .prologue
    .line 7815
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 7818
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    .line 7817
    invoke-virtual {v4, p1, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 7818
    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 7819
    .local v2, "metaData":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 7820
    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 7821
    .local v1, "iconResId":I
    if-eqz v1, :cond_0

    .line 7823
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v5

    .line 7824
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 7839
    .end local v1    # "iconResId":I
    .end local v2    # "metaData":Landroid/os/Bundle;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v6

    .line 7827
    :catch_0
    move-exception v0

    .line 7829
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "Launcher"

    .line 7830
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to load toolbar icon; "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7831
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 7832
    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 7830
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 7829
    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7839
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 7833
    :catch_1
    move-exception v3

    .line 7835
    .local v3, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v6, "Launcher"

    .line 7836
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to load toolbar icon from "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7837
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 7836
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 7835
    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 6270
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6271
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6272
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6273
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6274
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6275
    return-object v1
.end method

.method public static getLauncher()Lcom/android/launcher4/Launcher;
    .locals 1

    .prologue
    .line 7186
    sget-object v0, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    return-object v0
.end method

.method static getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 5008
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 5009
    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 5008
    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher4/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I

    move-result-object v0

    return-object v0
.end method

.method static getMinSpanForWidget(Landroid/content/Context;Lcom/android/launcher4/PendingAddWidgetInfo;)[I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/launcher4/PendingAddWidgetInfo;

    .prologue
    .line 5018
    iget-object v0, p1, Lcom/android/launcher4/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 5019
    iget v1, p1, Lcom/android/launcher4/PendingAddWidgetInfo;->minResizeWidth:I

    iget v2, p1, Lcom/android/launcher4/PendingAddWidgetInfo;->minResizeHeight:I

    .line 5018
    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher4/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I

    move-result-object v0

    return-object v0
.end method

.method public static getModel()Lcom/android/launcher4/LauncherModel;
    .locals 1

    .prologue
    .line 5314
    sget-object v0, Lcom/android/launcher4/Launcher;->mModel:Lcom/android/launcher4/LauncherModel;

    return-object v0
.end method

.method static getScreen()I
    .locals 2

    .prologue
    .line 1154
    sget-object v1, Lcom/android/launcher4/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1155
    :try_start_0
    sget v0, Lcom/android/launcher4/Launcher;->sScreen:I

    monitor-exit v1

    return v0

    .line 1154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 5003
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 5004
    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 5003
    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher4/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I

    move-result-object v0

    return-object v0
.end method

.method static getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I

    .prologue
    const/4 v5, 0x0

    .line 4992
    invoke-static {p0, p1, v5}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 4997
    .local v0, "padding":Landroid/graphics/Rect;
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int v2, v3, v4

    .line 4998
    .local v2, "requiredWidth":I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int v1, v3, v4

    .line 4999
    .local v1, "requiredHeight":I
    invoke-static {v2, v1, v5}, Lcom/android/launcher4/CellLayout;->rectToCell(II[I)[I

    move-result-object v3

    return-object v3
.end method

.method static getSpanForWidget(Landroid/content/Context;Lcom/android/launcher4/PendingAddWidgetInfo;)[I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/launcher4/PendingAddWidgetInfo;

    .prologue
    .line 5013
    iget-object v0, p1, Lcom/android/launcher4/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    iget v1, p1, Lcom/android/launcher4/PendingAddWidgetInfo;->minWidth:I

    .line 5014
    iget v2, p1, Lcom/android/launcher4/PendingAddWidgetInfo;->minHeight:I

    .line 5013
    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher4/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I

    move-result-object v0

    return-object v0
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2730
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWorkSpace()Lcom/android/launcher4/Workspace;
    .locals 1

    .prologue
    .line 7182
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    return-object v0
.end method

.method private growAndFadeOutFolderIcon(Lcom/android/launcher4/FolderIcon;)V
    .locals 14
    .param p1, "fi"    # Lcom/android/launcher4/FolderIcon;

    .prologue
    const/high16 v10, 0x3fc00000    # 1.5f

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 6916
    if-nez p1, :cond_0

    .line 6942
    :goto_0
    return-void

    .line 6918
    :cond_0
    const-string v7, "alpha"

    new-array v8, v13, [F

    const/4 v9, 0x0

    aput v9, v8, v12

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 6919
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string v7, "scaleX"

    new-array v8, v13, [F

    .line 6920
    aput v10, v8, v12

    .line 6919
    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 6921
    .local v5, "scaleX":Landroid/animation/PropertyValuesHolder;
    const-string v7, "scaleY"

    new-array v8, v13, [F

    .line 6922
    aput v10, v8, v12

    .line 6921
    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 6924
    .local v6, "scaleY":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p1}, Lcom/android/launcher4/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/FolderInfo;

    .line 6925
    .local v2, "info":Lcom/android/launcher4/FolderInfo;
    iget-wide v8, v2, Lcom/android/launcher4/FolderInfo;->container:J

    const-wide/16 v10, -0x65

    cmp-long v7, v8, v10

    if-nez v7, :cond_1

    .line 6926
    invoke-virtual {p1}, Lcom/android/launcher4/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/CellLayout;

    .line 6928
    .local v1, "cl":Lcom/android/launcher4/CellLayout;
    invoke-virtual {p1}, Lcom/android/launcher4/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 6927
    check-cast v3, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 6929
    .local v3, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    iget v7, v3, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    iget v8, v3, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v1, v7, v8}, Lcom/android/launcher4/CellLayout;->setFolderLeaveBehindCell(II)V

    .line 6934
    .end local v1    # "cl":Lcom/android/launcher4/CellLayout;
    .end local v3    # "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher4/Launcher;->copyFolderIconToImage(Lcom/android/launcher4/FolderIcon;)V

    .line 6935
    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Lcom/android/launcher4/FolderIcon;->setVisibility(I)V

    .line 6938
    iget-object v7, p0, Lcom/android/launcher4/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v8, v12

    aput-object v5, v8, v13

    const/4 v9, 0x2

    aput-object v6, v8, v9

    .line 6937
    invoke-static {v7, v8}, Lcom/android/launcher4/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 6939
    .local v4, "oa":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 6940
    const v8, 0x7f0b0017

    .line 6939
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6941
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private handleFolderClick(Lcom/android/launcher4/FolderIcon;)V
    .locals 8
    .param p1, "folderIcon"    # Lcom/android/launcher4/FolderIcon;

    .prologue
    .line 6818
    invoke-virtual {p1}, Lcom/android/launcher4/FolderIcon;->getFolderInfo()Lcom/android/launcher4/FolderInfo;

    move-result-object v1

    .line 6819
    .local v1, "info":Lcom/android/launcher4/FolderInfo;
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher4/Workspace;->getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher4/Folder;

    move-result-object v2

    .line 6825
    .local v2, "openFolder":Lcom/android/launcher4/Folder;
    iget-boolean v3, v1, Lcom/android/launcher4/FolderInfo;->opened:Z

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    .line 6826
    const-string v3, "Launcher"

    .line 6827
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Folder info marked as open, but associated folder is not open. Screen: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6828
    iget-wide v6, v1, Lcom/android/launcher4/FolderInfo;->screenId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/launcher4/FolderInfo;->cellX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6829
    iget v5, v1, Lcom/android/launcher4/FolderInfo;->cellY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6827
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6826
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6830
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/launcher4/FolderInfo;->opened:Z

    .line 6833
    :cond_0
    iget-boolean v3, v1, Lcom/android/launcher4/FolderInfo;->opened:Z

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher4/FolderIcon;->getFolder()Lcom/android/launcher4/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher4/Folder;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6835
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->closeFolder()V

    .line 6837
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Launcher;->openFolder(Lcom/android/launcher4/FolderIcon;)V

    .line 6853
    :cond_1
    :goto_0
    return-void

    .line 6841
    :cond_2
    if-eqz v2, :cond_1

    .line 6842
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher4/Workspace;->getPageForView(Landroid/view/View;)I

    move-result v0

    .line 6844
    .local v0, "folderScreen":I
    invoke-virtual {p0, v2}, Lcom/android/launcher4/Launcher;->closeFolder(Lcom/android/launcher4/Folder;)V

    .line 6845
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher4/Workspace;->getCurrentPage()I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 6847
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->closeFolder()V

    .line 6849
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Launcher;->openFolder(Lcom/android/launcher4/FolderIcon;)V

    goto :goto_0
.end method

.method private hideAppsCustomizeHelper(Lcom/android/launcher4/Workspace$State;ZZLjava/lang/Runnable;)V
    .locals 18
    .param p1, "toState"    # Lcom/android/launcher4/Workspace$State;
    .param p2, "animated"    # Z
    .param p3, "springLoaded"    # Z
    .param p4, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 7484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 7485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 7486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 7487
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher4/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 7489
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 7492
    .local v11, "res":Landroid/content/res/Resources;
    const v2, 0x7f0b0008

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 7494
    .local v9, "duration":I
    const v2, 0x7f0b000b

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 7496
    .local v10, "fadeOutDuration":I
    const v2, 0x7f0b0009

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v13, v2

    .line 7497
    .local v13, "scaleFactor":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher4/AppsCustomizeTabHost;

    .line 7498
    .local v4, "fromView":Landroid/view/View;
    sget-object v6, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 7499
    .local v6, "toView":Landroid/view/View;
    const/4 v15, 0x0

    .line 7500
    .local v15, "workspaceAnim":Landroid/animation/Animator;
    sget-object v2, Lcom/android/launcher4/Workspace$State;->NORMAL:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 7502
    const v2, 0x7f0b000d

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 7503
    .local v14, "stagger":I
    sget-object v2, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 7504
    const/4 v3, -0x1

    .line 7503
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1, v14, v3}, Lcom/android/launcher4/Workspace;->getChangeStateAnimation(Lcom/android/launcher4/Workspace$State;ZII)Landroid/animation/Animator;

    move-result-object v15

    .line 7511
    .end local v14    # "stagger":I
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/android/launcher4/Launcher;->setPivotsForZoom(Landroid/view/View;F)V

    .line 7512
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->showHotseat(Z)V

    .line 7513
    if-eqz p2, :cond_5

    .line 7514
    new-instance v12, Lcom/android/launcher4/LauncherViewPropertyAnimator;

    invoke-direct {v12, v4}, Lcom/android/launcher4/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 7516
    .local v12, "scaleAnim":Lcom/android/launcher4/LauncherViewPropertyAnimator;
    invoke-virtual {v12, v13}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher4/LauncherViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher4/LauncherViewPropertyAnimator;

    move-result-object v2

    .line 7517
    int-to-long v0, v9

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 7518
    new-instance v3, Lcom/android/launcher4/Workspace$ZoomInInterpolator;

    invoke-direct {v3}, Lcom/android/launcher4/Workspace$ZoomInInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7521
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 7520
    invoke-static {v4, v2, v3}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 7521
    int-to-long v0, v10

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 7522
    .local v8, "alphaAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7523
    new-instance v2, Lcom/android/launcher4/Launcher$87;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v6}, Lcom/android/launcher4/Launcher$87;-><init>(Lcom/android/launcher4/Launcher;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7532
    invoke-static {}, Lcom/android/launcher4/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher4/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 7534
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher4/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 7535
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/android/launcher4/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 7536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v2}, Lcom/android/launcher4/AppsCustomizePagedView;->pauseScrolling()V

    .line 7538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v16, v0

    new-instance v2, Lcom/android/launcher4/Launcher$88;

    move-object/from16 v3, p0

    move/from16 v5, p2

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher4/Launcher$88;-><init>(Lcom/android/launcher4/Launcher;Landroid/view/View;ZLandroid/view/View;Ljava/lang/Runnable;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v12, v3, v5

    const/4 v5, 0x1

    aput-object v8, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 7553
    if-eqz v15, :cond_2

    .line 7554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 7556
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher4/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 7557
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/android/launcher4/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 7558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v2, v6}, Lcom/android/launcher4/LauncherAnimUtils;->startAnimationAfterNextDraw(Landroid/animation/Animator;Landroid/view/View;)V

    .line 7569
    .end local v8    # "alphaAnim":Landroid/animation/ObjectAnimator;
    .end local v12    # "scaleAnim":Lcom/android/launcher4/LauncherViewPropertyAnimator;
    :goto_1
    return-void

    .line 7505
    :cond_3
    sget-object v2, Lcom/android/launcher4/Workspace$State;->SPRING_LOADED:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_4

    .line 7506
    sget-object v2, Lcom/android/launcher4/Workspace$State;->OVERVIEW:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 7507
    :cond_4
    sget-object v2, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher4/Workspace;->getChangeStateAnimation(Lcom/android/launcher4/Workspace$State;Z)Landroid/animation/Animator;

    move-result-object v15

    goto/16 :goto_0

    .line 7561
    :cond_5
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7562
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher4/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 7563
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher4/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 7564
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher4/Launcher;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 7565
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/android/launcher4/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 7566
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/android/launcher4/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 7567
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/android/launcher4/Launcher;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    goto :goto_1

    .line 7521
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initCling(IIZZ)Lcom/android/launcher4/Cling;
    .locals 3
    .param p1, "clingId"    # I
    .param p2, "scrimId"    # I
    .param p3, "animate"    # Z
    .param p4, "dimNavBarVisibilty"    # Z

    .prologue
    .line 8821
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/Cling;

    .line 8822
    .local v0, "cling":Lcom/android/launcher4/Cling;
    const/4 v1, 0x0

    .line 8823
    .local v1, "scrim":Landroid/view/View;
    if-lez p2, :cond_0

    .line 8824
    const v2, 0x7f11006e

    invoke-virtual {p0, v2}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 8826
    :cond_0
    if-eqz v0, :cond_1

    .line 8827
    invoke-virtual {v0, p0, v1}, Lcom/android/launcher4/Cling;->init(Lcom/android/launcher4/Launcher;Landroid/view/View;)V

    .line 8828
    const/16 v2, 0xfa

    invoke-virtual {v0, p3, v2}, Lcom/android/launcher4/Cling;->show(ZI)V

    .line 8830
    if-eqz p4, :cond_1

    .line 8831
    invoke-virtual {v0}, Lcom/android/launcher4/Cling;->getSystemUiVisibility()I

    move-result v2

    .line 8832
    or-int/lit8 v2, v2, 0x1

    .line 8831
    invoke-virtual {v0, v2}, Lcom/android/launcher4/Cling;->setSystemUiVisibility(I)V

    .line 8835
    :cond_1
    return-object v0
.end method

.method private initHashMap()V
    .locals 4

    .prologue
    .line 2826
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    if-nez v0, :cond_1

    .line 2979
    :cond_0
    :goto_0
    return-void

    .line 2830
    :cond_1
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Navi"

    .line 2831
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->m_navi_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2830
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2832
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Voice"

    .line 2833
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->m_voice_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2832
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2834
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Setting"

    .line 2835
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->m_set_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2834
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2836
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Video"

    .line 2837
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->m_video_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2836
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2838
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Bluetooth"

    .line 2839
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->m_bt_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2838
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2840
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Radio"

    .line 2841
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->m_radio_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2840
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2842
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Music"

    .line 2843
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->m_music_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2842
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2844
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Btav"

    .line 2845
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->m_btav_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2844
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2846
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "ECAR"

    .line 2847
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->m_ecar_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2846
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2848
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Kuwo"

    .line 2849
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->m_kuwo_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2848
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2850
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "UNICAR"

    .line 2851
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->m_unicar_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2850
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2852
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Klfm"

    .line 2853
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->m_klfm_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2852
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2854
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "HONGFANS"

    .line 2855
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->m_hongfans_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2854
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2856
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Dvr"

    .line 2857
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->m_dvr_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2856
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2858
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Light"

    .line 2859
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->m_light_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2858
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2860
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "CLOLSESCREEN"

    .line 2861
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->m_screen_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2860
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2862
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Wifi"

    .line 2863
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->m_wifi_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2862
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2864
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Sound"

    .line 2865
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->m_sound_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2864
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2866
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "CloseSound"

    .line 2867
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->m_closesound_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2866
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2868
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "BRIGHT"

    .line 2869
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->m_bright_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2868
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2871
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Eq"

    .line 2872
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->m_eq_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2871
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2873
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Time"

    .line 2874
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->m_time_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2873
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2875
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "ALLAPP"

    .line 2876
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->m_allapp_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2875
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2878
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2879
    const v1, 0x7f0a001e

    .line 2878
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2879
    if-eqz v0, :cond_2

    .line 2880
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    .line 2881
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->weather_imge:I

    .line 2880
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->weatherImg:Landroid/widget/ImageView;

    .line 2882
    const-string v0, "hy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "weatherImg"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher4/Launcher;->weatherImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    .line 2884
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->weather_city:I

    .line 2883
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->weatherCity:Landroid/widget/TextView;

    .line 2885
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    .line 2886
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->weather_weather:I

    .line 2885
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->weatherWeather:Landroid/widget/TextView;

    .line 2887
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    .line 2888
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->weather_temp:I

    .line 2887
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->weatherTemp:Landroid/widget/TextView;

    .line 2889
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    .line 2890
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->weather_wind:I

    .line 2889
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->weatherWind:Landroid/widget/TextView;

    .line 2891
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    .line 2892
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->weather_temp_range:I

    .line 2891
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->weatherTempRange:Landroid/widget/TextView;

    .line 2895
    :cond_2
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Navi"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2896
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Navi"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2899
    :cond_3
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Voice"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2900
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Voice"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2903
    :cond_4
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Setting"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2904
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Setting"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2907
    :cond_5
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Video"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2908
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Video"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2911
    :cond_6
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "BRIGHT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2912
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "BRIGHT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2915
    :cond_7
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Bluetooth"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2916
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Bluetooth"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2919
    :cond_8
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Radio"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2920
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Radio"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2923
    :cond_9
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Music"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2924
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Music"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2927
    :cond_a
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Btav"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2928
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Btav"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2931
    :cond_b
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "ECAR"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2932
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "ECAR"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2935
    :cond_c
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Kuwo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2936
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Kuwo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2939
    :cond_d
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "UNICAR"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2940
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "UNICAR"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2943
    :cond_e
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Klfm"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2944
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Klfm"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2947
    :cond_f
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "HONGFANS"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 2948
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "HONGFANS"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2951
    :cond_10
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Dvr"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2952
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Dvr"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2955
    :cond_11
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Light"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2956
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Light"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2958
    :cond_12
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "CLOLSESCREEN"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2959
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "CLOLSESCREEN"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2961
    :cond_13
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Wifi"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2962
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Wifi"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2964
    :cond_14
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Sound"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2965
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Sound"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2967
    :cond_15
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "CloseSound"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2968
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "CloseSound"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2970
    :cond_16
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Eq"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2971
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Eq"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2973
    :cond_17
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Time"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2974
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Time"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2976
    :cond_18
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "ALLAPP"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2977
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "ALLAPP"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private initViews()V
    .locals 6

    .prologue
    const v5, 0x7f0c007a

    .line 3164
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    if-eqz v1, :cond_3

    .line 3165
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3166
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->btav_name:I

    .line 3165
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mBtavName:Landroid/widget/TextView;

    .line 3167
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3168
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->btav_album:I

    .line 3167
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mBtavAritst:Landroid/widget/TextView;

    .line 3169
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3170
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->Radiobutton_prev:I

    .line 3169
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mRadioPrevButton:Landroid/widget/Button;

    .line 3171
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3172
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->Radiobutton_pause:I

    .line 3171
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mRadioPauseButton:Landroid/widget/Button;

    .line 3173
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3174
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->Radiobutton_next:I

    .line 3173
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mRadioNextButton:Landroid/widget/Button;

    .line 3175
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3176
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->musicbutton_prev:I

    .line 3175
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mMusicPrevButton:Landroid/widget/Button;

    .line 3177
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3178
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->musicbutton_prev_two:I

    .line 3177
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mMusicPrevButtonTwo:Landroid/widget/Button;

    .line 3179
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3180
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->musicbutton_next:I

    .line 3179
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mMusicNextButton:Landroid/widget/Button;

    .line 3181
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3182
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->musicbutton_next_two:I

    .line 3181
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mMusicNextButtonTwo:Landroid/widget/Button;

    .line 3183
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3184
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->btavbutton_prev:I

    .line 3183
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mBtavPrevButton:Landroid/widget/Button;

    .line 3185
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3186
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->btavbutton_next:I

    .line 3185
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mBtavNextButton:Landroid/widget/Button;

    .line 3187
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3188
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->btavbutton_playpause:I

    .line 3187
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mBtavPlayPauseButton:Landroid/widget/Button;

    .line 3189
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3190
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->musicbutton_playpause:I

    .line 3189
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->music_playpause:Landroid/widget/Button;

    .line 3191
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3192
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->musicbutton_playpause_two:I

    .line 3191
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->music_playpause_two:Landroid/widget/Button;

    .line 3193
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3194
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->kuwomusic_playpause:I

    .line 3193
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->kuwomusic_playpause:Landroid/widget/Button;

    .line 3195
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3196
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->kuwomusic_prev:I

    .line 3195
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->kuwomusic_prev:Landroid/widget/Button;

    .line 3197
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3198
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->kuwomusic_next:I

    .line 3197
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->kuwomusic_next:Landroid/widget/Button;

    .line 3199
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3200
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->tv_kuwo_musicname:I

    .line 3199
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mKwMusicName:Landroid/widget/TextView;

    .line 3201
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3202
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->tv_kuwo_artist:I

    .line 3201
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mKwArtist:Landroid/widget/TextView;

    .line 3204
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3205
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->video_playpause:I

    .line 3204
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->video_playpause:Landroid/widget/Button;

    .line 3206
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3207
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->video_prev:I

    .line 3206
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->video_prev:Landroid/widget/Button;

    .line 3208
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3209
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->video_next:I

    .line 3208
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->video_next:Landroid/widget/Button;

    .line 3211
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3212
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->mBtavIcon:I

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3211
    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mBtavIcon:Landroid/view/View;

    .line 3213
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3214
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->mRadioIcon:I

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3213
    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mRadioIcon:Landroid/view/View;

    .line 3215
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3216
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->mMusicIcon:I

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3215
    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mMusicIcon:Landroid/view/View;

    .line 3217
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3218
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->mBtavView:I

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3217
    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mBtavView:Landroid/view/View;

    .line 3219
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3220
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->mNaviView:I

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3219
    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mNaviView:Landroid/view/View;

    .line 3221
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3222
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->mInitNaviInfoView:I

    .line 3221
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mInitNaviInfoView:Landroid/view/View;

    .line 3223
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3224
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->mNaviRunView:I

    .line 3223
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mNaviRunView:Landroid/view/View;

    .line 3225
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3226
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->mTurnIconView:I

    .line 3225
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    .line 3228
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3229
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->mCurDis_RemainView:I

    .line 3228
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mCurDis_RemainView:Landroid/widget/TextView;

    .line 3230
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3231
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->map_bgunit:I

    .line 3230
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mMapbgUnitView:Landroid/widget/ImageView;

    .line 3232
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3233
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->car_light:I

    .line 3232
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mCarLightView:Landroid/widget/ImageView;

    .line 3234
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3235
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->mCurDis_AllView:I

    .line 3234
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mCurDis_AllView:Landroid/widget/TextView;

    .line 3236
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3237
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->mCamera_DisView:I

    .line 3236
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mCamera_DisView:Landroid/widget/TextView;

    .line 3238
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3239
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->mCamera_DisImageView:I

    .line 3238
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mCamera_DisImageView:Landroid/widget/ImageView;

    .line 3240
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3241
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->mCurRoadNameView:I

    .line 3240
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mCurRoadNameView:Landroid/widget/TextView;

    .line 3242
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3243
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->mNextRoadNameView:I

    .line 3242
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mNextRoadNameView:Landroid/widget/TextView;

    .line 3244
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3245
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->mCurCityView:I

    .line 3244
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mCurCityView:Landroid/widget/TextView;

    .line 3246
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3247
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->mCurRemainTimeView:I

    .line 3246
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mCurRemainTimeView:Landroid/widget/TextView;

    .line 3248
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3249
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->mDynamicTrailView:I

    .line 3248
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mDynamicTrailView:Landroid/widget/ImageView;

    .line 3250
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3251
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->navi_mycar:I

    .line 3250
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mNaviMycar:Landroid/widget/ImageView;

    .line 3253
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3254
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->tv_musicName:I

    .line 3253
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->tvMusicName:Landroid/widget/TextView;

    .line 3255
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3256
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->tv_musicName_two:I

    .line 3255
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->tvMusicNameTwo:Landroid/widget/TextView;

    .line 3257
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3258
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->iv_album_bg:I

    .line 3257
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->ivALbumBg:Landroid/widget/ImageView;

    .line 3259
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3260
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->tv_artist:I

    .line 3259
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->tvAritst:Landroid/widget/TextView;

    .line 3261
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3262
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->tv_album:I

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3261
    iput-object v1, p0, Lcom/android/launcher4/Launcher;->tvAlbum:Landroid/widget/TextView;

    .line 3263
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3264
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->music_cur_time:I

    .line 3263
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->tvCurTime:Landroid/widget/TextView;

    .line 3265
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3266
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->music_total_time:I

    .line 3265
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->tvTotalTime:Landroid/widget/TextView;

    .line 3267
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3268
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->music_seekbar:I

    .line 3267
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->musicSeekBar:Landroid/widget/SeekBar;

    .line 3269
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3270
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->music_progress:I

    .line 3269
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->musicProgress:Landroid/widget/ProgressBar;

    .line 3271
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mPlayer:Landroid/media/MediaPlayer;

    .line 3273
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3274
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->tv_navi:I

    .line 3273
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mTvNavi:Landroid/widget/TextView;

    .line 3275
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3276
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->tv_settings:I

    .line 3275
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mTvSettings:Landroid/widget/TextView;

    .line 3277
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3278
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->tv_car:I

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3277
    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mTvCar:Landroid/widget/TextView;

    .line 3279
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3280
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->tv_music:I

    .line 3279
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mTvMusic:Landroid/widget/TextView;

    .line 3281
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3282
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->tv_radio:I

    .line 3281
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mTvRadio:Landroid/widget/TextView;

    .line 3283
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3284
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->tv_miudrive:I

    .line 3283
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mMiuDrive:Landroid/widget/TextView;

    .line 3285
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3286
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->tv_apps:I

    .line 3285
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mTvApps:Landroid/widget/TextView;

    .line 3287
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3288
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->tv_bt:I

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3287
    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mTvBt:Landroid/widget/TextView;

    .line 3289
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3290
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->tv_video:I

    .line 3289
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mTvMovie:Landroid/widget/TextView;

    .line 3291
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3292
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->tv_file:I

    .line 3291
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mTvFile:Landroid/widget/TextView;

    .line 3293
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3294
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->tv_gallery:I

    .line 3293
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mTvGallery:Landroid/widget/TextView;

    .line 3295
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3296
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->tv_dvr:I

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3295
    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mTvDVR:Landroid/widget/TextView;

    .line 3298
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3299
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->compass_text:I

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3298
    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mTvGpsAngle:Landroid/widget/TextView;

    .line 3300
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3301
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->compass_icon:I

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3300
    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mIvGpsAngle:Landroid/widget/ImageView;

    .line 3303
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    const v2, 0x7f11002c

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->pipViews:Landroid/view/View;

    .line 3305
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3306
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->turntableview:I

    .line 3305
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fyt/widget/TurntableView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mTurntableView:Lcom/fyt/widget/TurntableView;

    .line 3307
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3308
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->tv_speed:I

    .line 3307
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mTvSpeed:Landroid/widget/TextView;

    .line 3312
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    const v2, 0x7f110027

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mapSpeed:Landroid/view/View;

    .line 3313
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    const v2, 0x7f11001e

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->adasView:Landroid/view/View;

    .line 3314
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    const v2, 0x7f110028

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mSpeed1:Landroid/widget/TextView;

    .line 3315
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    const v2, 0x7f110029

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mSpeed2:Landroid/widget/TextView;

    .line 3316
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    const v2, 0x7f11002a

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mSpeed3:Landroid/widget/TextView;

    .line 3317
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    const v2, 0x7f11001f

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->tvTopLight:Landroid/widget/TextView;

    .line 3318
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    const v2, 0x7f110021

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mRoad:Landroid/widget/ImageView;

    .line 3319
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    const v2, 0x7f110026

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->ivCar:Landroid/widget/ImageView;

    .line 3320
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    const v2, 0x7f110022

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->ivleft:Landroid/widget/ImageView;

    .line 3321
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    const v2, 0x7f110023

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->ivRight:Landroid/widget/ImageView;

    .line 3322
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    const v2, 0x7f110020

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->ivAdasTip:Landroid/widget/ImageView;

    .line 3323
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    const v2, 0x7f11002b

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->imgAdas:Landroid/widget/ImageView;

    .line 3324
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    const v2, 0x7f110025

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->ivFrontCar:Landroid/widget/ImageView;

    .line 3326
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Music"

    .line 3327
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_music:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3326
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3328
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Music_Two"

    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3329
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_music_two:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3328
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3330
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_MusicIV"

    .line 3331
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->iv_music:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3330
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3332
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Radio"

    .line 3333
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_radio:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3332
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3334
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Video"

    .line 3335
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_video:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3334
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3336
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Gallery"

    .line 3337
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_gallery:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3336
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3338
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Miudrive"

    .line 3339
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_miudrive:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3338
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3340
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Bt"

    .line 3341
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_bt:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3340
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3342
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Navi"

    .line 3343
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_navi:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3342
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3344
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Gaode"

    .line 3345
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_gaode:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3344
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3346
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Klfm"

    .line 3347
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_klfm:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3346
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3348
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Kuwo"

    .line 3349
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_kuwo:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3348
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3350
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Dvr"

    .line 3351
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_dvr:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3350
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3352
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Dvd"

    .line 3353
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_dvd:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3352
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3354
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Steer"

    .line 3355
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_steer:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3354
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3356
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Easyconn"

    .line 3357
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_easyconn:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3356
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3358
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Recharge"

    .line 3359
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_recharge:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3358
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3360
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Voice"

    .line 3361
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_voice:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3360
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3362
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_File"

    .line 3363
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_file:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3362
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3364
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Veding"

    .line 3365
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_veding:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3364
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3366
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_YouTuBe"

    .line 3367
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_youtube:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3366
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3368
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Chrome"

    .line 3369
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_chrome:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3368
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3370
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Custom"

    .line 3371
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_custom:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3370
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3373
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Car"

    .line 3374
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_car:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3373
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3375
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Tire"

    .line 3376
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_tire:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3375
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3377
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Time"

    .line 3378
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->ll_time:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3377
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3379
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Time_Two"

    .line 3380
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->ll_time_two:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3379
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3381
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Settings"

    .line 3382
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_settings:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3381
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3383
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Allapps"

    .line 3384
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->ll_allapps:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3383
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3385
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Dvr_Rec"

    .line 3386
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->dvr_rec:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3385
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3387
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Dvr_Lock"

    .line 3388
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->dvr_lock:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3387
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3389
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Dvr_Catch"

    .line 3390
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->dvr_catch:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3389
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3391
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_BRIGHT"

    .line 3392
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->rl_bright:I

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3391
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3394
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mTurntableView:Lcom/fyt/widget/TurntableView;

    if-eqz v1, :cond_0

    .line 3395
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mTurntableView:Lcom/fyt/widget/TurntableView;

    iget v2, p0, Lcom/android/launcher4/Launcher;->carSpeed:I

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v2}, Lcom/fyt/widget/TurntableView;->setTargetWithAnim(I)V

    .line 3397
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mTvSpeed:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 3398
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mTvSpeed:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3399
    const v4, 0x7f0c00a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/launcher4/Launcher;->carSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3398
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3402
    :cond_1
    sget-object v1, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3403
    const v2, 0x7f0a001e

    .line 3402
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 3403
    if-nez v1, :cond_2

    .line 3404
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3405
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->weather_imge:I

    .line 3404
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->weatherImg:Landroid/widget/ImageView;

    .line 3407
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3408
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->weather_city:I

    .line 3407
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->weatherCity:Landroid/widget/TextView;

    .line 3409
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3410
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->weather_weather:I

    .line 3409
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->weatherWeather:Landroid/widget/TextView;

    .line 3411
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3412
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->weather_temp:I

    .line 3411
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->weatherTemp:Landroid/widget/TextView;

    .line 3413
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3414
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->weather_wind:I

    .line 3413
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->weatherWind:Landroid/widget/TextView;

    .line 3415
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3416
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->weather_temp_range:I

    .line 3415
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->weatherTempRange:Landroid/widget/TextView;

    .line 3418
    :cond_2
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3419
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->tv_band:I

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3418
    iput-object v1, p0, Lcom/android/launcher4/Launcher;->tvBand:Landroid/widget/TextView;

    .line 3420
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3421
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->tv_unit:I

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3420
    iput-object v1, p0, Lcom/android/launcher4/Launcher;->tvUnit:Landroid/widget/TextView;

    .line 3422
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3423
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->radio_point:I

    .line 3422
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fyt/widget/RadioRuler;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->img_freq_point:Lcom/fyt/widget/RadioRuler;

    .line 3424
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3425
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->tv_freq:I

    .line 3424
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->tvCurFreq:Landroid/widget/TextView;

    .line 3427
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3428
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->coverflowtext:I

    .line 3427
    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/launcher4/Launcher;->coverFlowText:Landroid/widget/TextView;

    .line 3430
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 3431
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->coverflow:I

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Limagecoverflow/CoverFlowView;

    .line 3430
    iput-object v1, p0, Lcom/android/launcher4/Launcher;->mCoverFlowView:Limagecoverflow/CoverFlowView;

    .line 3433
    new-instance v1, Limagecoverflow/MyCoverFlowAdapter;

    invoke-direct {v1, p0}, Limagecoverflow/MyCoverFlowAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher4/Launcher;->adapter:Limagecoverflow/MyCoverFlowAdapter;

    .line 3434
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mCoverFlowView:Limagecoverflow/CoverFlowView;

    if-eqz v1, :cond_3

    .line 3435
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mCoverFlowView:Limagecoverflow/CoverFlowView;

    iget-object v2, p0, Lcom/android/launcher4/Launcher;->adapter:Limagecoverflow/MyCoverFlowAdapter;

    invoke-virtual {v1, v2}, Limagecoverflow/CoverFlowView;->setAdapter(Limagecoverflow/CoverFlowAdapter;)V

    .line 3436
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mCoverFlowView:Limagecoverflow/CoverFlowView;

    .line 3437
    new-instance v2, Lcom/android/launcher4/Launcher$48;

    invoke-direct {v2, p0}, Lcom/android/launcher4/Launcher$48;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v1, v2}, Limagecoverflow/CoverFlowView;->setCoverFlowListener(Limagecoverflow/CoverFlowView$CoverFlowListener;)V

    .line 3522
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mCoverFlowView:Limagecoverflow/CoverFlowView;

    .line 3523
    new-instance v2, Lcom/android/launcher4/Launcher$49;

    invoke-direct {v2, p0}, Lcom/android/launcher4/Launcher$49;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v1, v2}, Limagecoverflow/CoverFlowView;->setTopImageLongClickListener(Limagecoverflow/CoverFlowView$TopImageLongClickListener;)V

    .line 3534
    :cond_3
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->tvMusicName:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 3535
    sget-object v1, Lcom/fyt/car/MusicService;->music_path:Ljava/lang/String;

    if-eqz v1, :cond_36

    .line 3536
    sget-object v1, Lcom/fyt/car/MusicService;->music_path:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 3537
    sget-object v1, Lcom/fyt/car/MusicService;->music_path:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_36

    .line 3538
    sget-object v1, Lcom/fyt/car/MusicService;->music_path:Ljava/lang/String;

    .line 3539
    sget-object v2, Lcom/fyt/car/MusicService;->music_path:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3540
    .local v0, "musictitle":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->tvMusicName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3545
    .end local v0    # "musictitle":Ljava/lang/String;
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->tvMusicNameTwo:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 3546
    sget-object v1, Lcom/fyt/car/MusicService;->music_path:Ljava/lang/String;

    if-eqz v1, :cond_37

    .line 3547
    sget-object v1, Lcom/fyt/car/MusicService;->music_path:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 3548
    sget-object v1, Lcom/fyt/car/MusicService;->music_path:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_37

    .line 3549
    sget-object v1, Lcom/fyt/car/MusicService;->music_path:Ljava/lang/String;

    .line 3550
    sget-object v2, Lcom/fyt/car/MusicService;->music_path:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3551
    .restart local v0    # "musictitle":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->tvMusicNameTwo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3558
    .end local v0    # "musictitle":Ljava/lang/String;
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->tvCurTime:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 3560
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->tvCurTime:Landroid/widget/TextView;

    const-string v2, "00:00"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3562
    :cond_6
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->tvTotalTime:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 3564
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->tvTotalTime:Landroid/widget/TextView;

    const-string v2, "00:00"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3566
    :cond_7
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->musicSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_8

    .line 3567
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->musicSeekBar:Landroid/widget/SeekBar;

    .line 3568
    new-instance v2, Lcom/android/launcher4/Launcher$OnSeekBarChangeListenerImp;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/launcher4/Launcher$OnSeekBarChangeListenerImp;-><init>(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/Launcher$OnSeekBarChangeListenerImp;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 3571
    :cond_8
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->music_playpause:Landroid/widget/Button;

    if-eqz v1, :cond_9

    .line 3572
    sget-object v1, Lcom/fyt/car/MusicService;->state:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 3573
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->music_playpause:Landroid/widget/Button;

    .line 3574
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->music_playpause_icon:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 3580
    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Dvr_Rec"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 3581
    sget v1, Lcom/fyt/widget/DvrService;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_39

    .line 3582
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Dvr_Rec"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 3584
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Dvr_Rec"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3585
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->dvr_stop_btn:I

    .line 3584
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3595
    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->music_playpause_two:Landroid/widget/Button;

    if-eqz v1, :cond_b

    .line 3596
    sget-object v1, Lcom/fyt/car/MusicService;->state:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 3597
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->music_playpause_two:Landroid/widget/Button;

    .line 3598
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->music_playpause_icon:I

    .line 3597
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 3605
    :cond_b
    :goto_4
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->tvAritst:Landroid/widget/TextView;

    if-eqz v1, :cond_c

    .line 3606
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->tvAritst:Landroid/widget/TextView;

    const v2, 0x7f0c0086

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 3608
    :cond_c
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->tvAlbum:Landroid/widget/TextView;

    if-eqz v1, :cond_d

    .line 3610
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->tvAlbum:Landroid/widget/TextView;

    const v2, 0x7f0c0087

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 3612
    :cond_d
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mBtavView:Landroid/view/View;

    if-eqz v1, :cond_e

    .line 3613
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mBtavView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3615
    :cond_e
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mBtavName:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    .line 3616
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mBtavName:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 3619
    :cond_f
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mBtavAritst:Landroid/widget/TextView;

    if-eqz v1, :cond_10

    .line 3620
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mBtavAritst:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 3623
    :cond_10
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->tvCurFreq:Landroid/widget/TextView;

    if-eqz v1, :cond_11

    .line 3624
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->tvCurFreq:Landroid/widget/TextView;

    const-string v2, "87.50"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3626
    :cond_11
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->tvUnit:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    .line 3627
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->tvUnit:Landroid/widget/TextView;

    const-string v2, "MHz"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3632
    :cond_12
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->tvBand:Landroid/widget/TextView;

    if-eqz v1, :cond_13

    .line 3633
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->tvBand:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 3635
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->tvBand:Landroid/widget/TextView;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->fm:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3642
    :cond_13
    :goto_5
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Radio"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 3643
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Radio"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3645
    :cond_14
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Music"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 3646
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Music"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3648
    :cond_15
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Music_Two"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 3649
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Music_Two"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3651
    :cond_16
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_MusicIV"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 3652
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_MusicIV"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3655
    :cond_17
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Video"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 3656
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Video"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3659
    :cond_18
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_BRIGHT"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 3660
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_BRIGHT"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3663
    :cond_19
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Gallery"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 3664
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Gallery"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3667
    :cond_1a
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Miudrive"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 3668
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Miudrive"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3671
    :cond_1b
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Bt"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 3672
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Bt"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3674
    :cond_1c
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Veding"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 3675
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Veding"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3677
    :cond_1d
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_YouTuBe"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 3678
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_YouTuBe"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3680
    :cond_1e
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Chrome"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 3681
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Chrome"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3683
    :cond_1f
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Custom"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 3684
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Custom"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3687
    :cond_20
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Custom"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 3689
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Custom"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v2, Lcom/android/launcher4/Launcher$50;

    invoke-direct {v2, p0}, Lcom/android/launcher4/Launcher$50;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3698
    :cond_21
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Navi"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 3699
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Navi"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3702
    :cond_22
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Gaode"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 3703
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Gaode"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3706
    :cond_23
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Klfm"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 3707
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Klfm"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3710
    :cond_24
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Kuwo"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 3711
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Kuwo"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3713
    :cond_25
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Dvr"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 3714
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Dvr"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3716
    :cond_26
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Dvd"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 3717
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Dvd"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3719
    :cond_27
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Steer"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 3720
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Steer"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3722
    :cond_28
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Easyconn"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 3723
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Easyconn"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3725
    :cond_29
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Recharge"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 3726
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Recharge"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3728
    :cond_2a
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Voice"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 3729
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Voice"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3731
    :cond_2b
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_File"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 3732
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_File"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3734
    :cond_2c
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Car"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 3735
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Car"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3737
    :cond_2d
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Tire"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 3738
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Tire"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3741
    :cond_2e
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Time"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 3742
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Time"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3744
    :cond_2f
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Time_Two"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 3745
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Time_Two"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3747
    :cond_30
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Settings"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 3748
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Settings"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3750
    :cond_31
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Allapps"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 3751
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Allapps"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3753
    :cond_32
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Dvr_Rec"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 3754
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Dvr_Rec"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3756
    :cond_33
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Dvr_Lock"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 3757
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Dvr_Lock"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3759
    :cond_34
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Dvr_Catch"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 3760
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Dvr_Catch"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3763
    :cond_35
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->imgAdas:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/launcher4/Launcher$51;

    invoke-direct {v2, p0}, Lcom/android/launcher4/Launcher$51;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3784
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->updateView()V

    .line 3785
    return-void

    .line 3542
    :cond_36
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->tvMusicName:Landroid/widget/TextView;

    const v2, 0x7f0c0085

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 3553
    :cond_37
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->tvMusicNameTwo:Landroid/widget/TextView;

    const v2, 0x7f0c0083

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 3576
    :cond_38
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->music_playpause:Landroid/widget/Button;

    .line 3577
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->music_pause_icon:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 3588
    :cond_39
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Dvr_Rec"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 3590
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v2, "WS_Dvr_Rec"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3591
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->dvr_rec_btn:I

    .line 3590
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 3600
    :cond_3a
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->music_playpause_two:Landroid/widget/Button;

    .line 3601
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->music_pause_icon:I

    .line 3600
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 3638
    :cond_3b
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->tvBand:Landroid/widget/TextView;

    const-string v2, "FM"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method private static intToState(I)Lcom/android/launcher4/Launcher$State;
    .locals 4
    .param p0, "stateOrdinal"    # I

    .prologue
    .line 2744
    sget-object v1, Lcom/android/launcher4/Launcher$State;->WORKSPACE:Lcom/android/launcher4/Launcher$State;

    .line 2745
    .local v1, "state":Lcom/android/launcher4/Launcher$State;
    invoke-static {}, Lcom/android/launcher4/Launcher$State;->values()[Lcom/android/launcher4/Launcher$State;

    move-result-object v2

    .line 2746
    .local v2, "stateValues":[Lcom/android/launcher4/Launcher$State;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 2752
    :goto_1
    return-object v1

    .line 2747
    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/android/launcher4/Launcher$State;->ordinal()I

    move-result v3

    if-ne v3, p0, :cond_1

    .line 2748
    aget-object v1, v2, v0

    .line 2749
    goto :goto_1

    .line 2746
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "container"    # Landroid/view/View;
    .param p2, "button"    # Landroid/view/View;

    .prologue
    .line 7906
    instance-of v2, p1, Lcom/android/launcher4/HolographicLinearLayout;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 7907
    check-cast v0, Lcom/android/launcher4/HolographicLinearLayout;

    .line 7908
    .local v0, "layout":Lcom/android/launcher4/HolographicLinearLayout;
    invoke-virtual {v0}, Lcom/android/launcher4/HolographicLinearLayout;->invalidatePressedFocusedStates()V

    .line 7913
    .end local v0    # "layout":Lcom/android/launcher4/HolographicLinearLayout;
    :cond_0
    :goto_0
    return-void

    .line 7909
    :cond_1
    instance-of v2, p2, Lcom/android/launcher4/HolographicImageView;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 7910
    check-cast v1, Lcom/android/launcher4/HolographicImageView;

    .line 7911
    .local v1, "view":Lcom/android/launcher4/HolographicImageView;
    invoke-virtual {v1}, Lcom/android/launcher4/HolographicImageView;->invalidatePressedFocusedStates()V

    goto :goto_0
.end method

.method private isClingsEnabled()Z
    .locals 1

    .prologue
    .line 8779
    const/4 v0, 0x0

    return v0
.end method

.method private static isPropertyEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 488
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static makeRoundCorner(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v14, 0x0

    .line 4664
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 4665
    .local v12, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 4666
    .local v3, "height":I
    const/4 v4, 0x0

    .local v4, "left":I
    const/4 v11, 0x0

    .local v11, "top":I
    move v9, v12

    .local v9, "right":I
    move v0, v3

    .line 4667
    .local v0, "bottom":I
    div-int/lit8 v13, v3, 0x2

    int-to-float v10, v13

    .line 4668
    .local v10, "roundPx":F
    if-le v12, v3, :cond_1

    .line 4669
    sub-int v13, v12, v3

    div-int/lit8 v4, v13, 0x2

    .line 4670
    const/4 v11, 0x0

    .line 4671
    add-int v9, v4, v3

    .line 4672
    move v0, v3

    .line 4682
    :cond_0
    :goto_0
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 4681
    invoke-static {v12, v3, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 4683
    .local v5, "output":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4684
    .local v1, "canvas":Landroid/graphics/Canvas;
    const v2, -0xbdbdbe

    .line 4685
    .local v2, "color":I
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 4686
    .local v6, "paint":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v4, v11, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4687
    .local v7, "rect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 4689
    .local v8, "rectF":Landroid/graphics/RectF;
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4690
    invoke-virtual {v1, v14, v14, v14, v14}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 4691
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4692
    invoke-virtual {v1, v8, v10, v10, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4693
    new-instance v13, Landroid/graphics/PorterDuffXfermode;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v14}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 4694
    invoke-virtual {v1, p0, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4696
    return-object v5

    .line 4673
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "color":I
    .end local v5    # "output":Landroid/graphics/Bitmap;
    .end local v6    # "paint":Landroid/graphics/Paint;
    .end local v7    # "rect":Landroid/graphics/Rect;
    .end local v8    # "rectF":Landroid/graphics/RectF;
    :cond_1
    if-le v3, v12, :cond_0

    .line 4674
    const/4 v4, 0x0

    .line 4675
    sub-int v13, v3, v12

    div-int/lit8 v11, v13, 0x2

    .line 4676
    move v9, v12

    .line 4677
    add-int v0, v11, v12

    .line 4678
    div-int/lit8 v13, v12, 0x2

    int-to-float v10, v13

    goto :goto_0
.end method

.method private mapConfigurationOriActivityInfoOri(I)I
    .locals 7
    .param p1, "configOri"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x2

    .line 8717
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 8718
    .local v0, "d":Landroid/view/Display;
    const/4 v2, 0x2

    .line 8719
    .local v2, "naturalOri":I
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 8733
    :goto_0
    const/4 v6, 0x4

    new-array v3, v6, [I

    const/4 v6, 0x0

    .line 8735
    aput v4, v3, v6

    .line 8737
    const/16 v4, 0x9

    aput v4, v3, v5

    const/4 v4, 0x3

    .line 8738
    const/16 v6, 0x8

    .line 8735
    aput v6, v3, v4

    .line 8742
    .local v3, "oriMap":[I
    const/4 v1, 0x0

    .line 8743
    .local v1, "indexOffset":I
    if-ne v2, v5, :cond_0

    .line 8744
    const/4 v1, 0x1

    .line 8746
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    add-int/2addr v4, v1

    rem-int/lit8 v4, v4, 0x4

    aget v4, v3, v4

    return v4

    .line 8724
    .end local v1    # "indexOffset":I
    .end local v3    # "oriMap":[I
    :pswitch_0
    move v2, p1

    .line 8725
    goto :goto_0

    .line 8730
    :pswitch_1
    if-ne p1, v5, :cond_1

    move v2, v4

    :goto_1
    goto :goto_0

    :cond_1
    move v2, v5

    .line 8731
    goto :goto_1

    .line 8719
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private needStartKuwo()V
    .locals 3

    .prologue
    .line 3814
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cn.kuwo.kwmusiccar"

    invoke-static {v0, v1}, Lcom/syu/util/AppUtil;->isInTheTaskbar(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3815
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "WS_Kuwo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3816
    const-string v1, "cn.kuwo.kwmusiccar"

    invoke-static {p0, v1}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "music"

    .line 3815
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 3819
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->switchSoundChannelThirdPlayer()V

    .line 3820
    return-void
.end method

.method private onAppWidgetReset()V
    .locals 1

    .prologue
    .line 5921
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mAppWidgetHost:Lcom/android/launcher4/LauncherAppWidgetHost;

    if-eqz v0, :cond_0

    .line 5922
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mAppWidgetHost:Lcom/android/launcher4/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppWidgetHost;->startListening()V

    .line 5924
    :cond_0
    return-void
.end method

.method private randomSpeed()V
    .locals 2

    .prologue
    .line 2169
    iget-boolean v0, p0, Lcom/android/launcher4/Launcher;->isInRandom:Z

    if-nez v0, :cond_0

    .line 2170
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher4/Launcher$26;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$26;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2215
    :cond_0
    return-void
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/android/launcher4/Launcher$LocaleConfiguration;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configuration"    # Lcom/android/launcher4/Launcher$LocaleConfiguration;

    .prologue
    .line 1083
    const/4 v0, 0x0

    .line 1085
    .local v0, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    .end local v0    # "in":Ljava/io/DataInputStream;
    .local v1, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/launcher4/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1087
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/launcher4/Launcher$LocaleConfiguration;->mcc:I

    .line 1088
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/launcher4/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1094
    if-eqz v1, :cond_2

    .line 1096
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v0, v1

    .line 1102
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "in":Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    return-void

    .line 1089
    :catch_0
    move-exception v2

    .line 1094
    :goto_1
    if-eqz v0, :cond_0

    .line 1096
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1097
    :catch_1
    move-exception v2

    goto :goto_0

    .line 1091
    :catch_2
    move-exception v2

    .line 1094
    :goto_2
    if-eqz v0, :cond_0

    .line 1096
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 1097
    :catch_3
    move-exception v2

    goto :goto_0

    .line 1093
    :catchall_0
    move-exception v2

    .line 1094
    :goto_3
    if-eqz v0, :cond_1

    .line 1096
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1101
    :cond_1
    :goto_4
    throw v2

    .line 1097
    .end local v0    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "in":Ljava/io/DataInputStream;
    goto :goto_0

    :catch_5
    move-exception v3

    goto :goto_4

    .line 1093
    .end local v0    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "in":Ljava/io/DataInputStream;
    goto :goto_3

    .line 1091
    .end local v0    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "in":Ljava/io/DataInputStream;
    goto :goto_2

    .line 1089
    .end local v0    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "in":Ljava/io/DataInputStream;
    goto :goto_1

    .end local v0    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :cond_2
    move-object v0, v1

    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "in":Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method private registerContentObservers()V
    .locals 4

    .prologue
    .line 5812
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5814
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher4/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    .line 5815
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 5813
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5816
    return-void
.end method

.method private removeCling(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 8984
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 8985
    .local v0, "cling":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 8986
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 8987
    .local v1, "parent":Landroid/view/ViewGroup;
    new-instance v2, Lcom/android/launcher4/Launcher$103;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/launcher4/Launcher$103;-><init>(Lcom/android/launcher4/Launcher;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 8993
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHideFromAccessibilityHelper:Lcom/android/launcher4/HideFromAccessibilityHelper;

    .line 8994
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mDragLayer:Lcom/android/launcher4/DragLayer;

    invoke-virtual {v2, v3}, Lcom/android/launcher4/HideFromAccessibilityHelper;->restoreImportantForAccessibility(Landroid/view/View;)V

    .line 8996
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private resetAddInfo()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    .line 5610
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iput-wide v4, v0, Lcom/android/launcher4/ItemInfo;->container:J

    .line 5611
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iput-wide v4, v0, Lcom/android/launcher4/ItemInfo;->screenId:J

    .line 5612
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iput v2, v1, Lcom/android/launcher4/ItemInfo;->cellY:I

    iput v2, v0, Lcom/android/launcher4/ItemInfo;->cellX:I

    .line 5613
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iput v2, v1, Lcom/android/launcher4/ItemInfo;->spanY:I

    iput v2, v0, Lcom/android/launcher4/ItemInfo;->spanX:I

    .line 5614
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iput v2, v1, Lcom/android/launcher4/ItemInfo;->minSpanY:I

    iput v2, v0, Lcom/android/launcher4/ItemInfo;->minSpanX:I

    .line 5615
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher4/ItemInfo;->dropPos:[I

    .line 5616
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 2762
    if-nez p1, :cond_1

    .line 2823
    :cond_0
    :goto_0
    return-void

    .line 2766
    :cond_1
    const-string v11, "launcher.state"

    .line 2767
    sget-object v12, Lcom/android/launcher4/Launcher$State;->WORKSPACE:Lcom/android/launcher4/Launcher$State;

    invoke-virtual {v12}, Lcom/android/launcher4/Launcher$State;->ordinal()I

    move-result v12

    .line 2766
    invoke-virtual {p1, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v11}, Lcom/android/launcher4/Launcher;->intToState(I)Lcom/android/launcher4/Launcher$State;

    move-result-object v10

    .line 2768
    .local v10, "state":Lcom/android/launcher4/Launcher$State;
    sget-object v11, Lcom/android/launcher4/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher4/Launcher$State;

    if-ne v10, v11, :cond_2

    .line 2769
    sget-object v11, Lcom/android/launcher4/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher4/Launcher$State;

    iput-object v11, p0, Lcom/android/launcher4/Launcher;->mOnResumeState:Lcom/android/launcher4/Launcher$State;

    .line 2772
    :cond_2
    const-string v11, "launcher.current_screen"

    .line 2773
    const/16 v12, -0x3e9

    .line 2772
    invoke-virtual {p1, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2774
    .local v2, "currentScreen":I
    const/16 v11, -0x3e9

    if-eq v2, v11, :cond_3

    .line 2775
    sget-object v11, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v11, v2}, Lcom/android/launcher4/Workspace;->setRestorePage(I)V

    .line 2779
    :cond_3
    const-string v11, "launcher.add_container"

    const-wide/16 v12, -0x1

    .line 2778
    invoke-virtual {p1, v11, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 2781
    .local v6, "pendingAddContainer":J
    const-string v11, "launcher.add_screen"

    const-wide/16 v12, -0x1

    .line 2780
    invoke-virtual {p1, v11, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 2783
    .local v8, "pendingAddScreen":J
    const-wide/16 v12, -0x1

    cmp-long v11, v6, v12

    if-eqz v11, :cond_4

    const-wide/16 v12, -0x1

    cmp-long v11, v8, v12

    if-lez v11, :cond_4

    .line 2784
    iget-object v11, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iput-wide v6, v11, Lcom/android/launcher4/ItemInfo;->container:J

    .line 2785
    iget-object v11, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iput-wide v8, v11, Lcom/android/launcher4/ItemInfo;->screenId:J

    .line 2786
    iget-object v11, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    .line 2787
    const-string v12, "launcher.add_cell_x"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 2786
    iput v12, v11, Lcom/android/launcher4/ItemInfo;->cellX:I

    .line 2788
    iget-object v11, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    .line 2789
    const-string v12, "launcher.add_cell_y"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 2788
    iput v12, v11, Lcom/android/launcher4/ItemInfo;->cellY:I

    .line 2790
    iget-object v11, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    .line 2791
    const-string v12, "launcher.add_span_x"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 2790
    iput v12, v11, Lcom/android/launcher4/ItemInfo;->spanX:I

    .line 2792
    iget-object v11, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    .line 2793
    const-string v12, "launcher.add_span_y"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 2792
    iput v12, v11, Lcom/android/launcher4/ItemInfo;->spanY:I

    .line 2795
    const-string v11, "launcher.add_widget_info"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/appwidget/AppWidgetProviderInfo;

    .line 2794
    iput-object v11, p0, Lcom/android/launcher4/Launcher;->mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2796
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/launcher4/Launcher;->mWaitingForResult:Z

    .line 2797
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/launcher4/Launcher;->mRestoring:Z

    .line 2801
    :cond_4
    const-string v11, "launcher.rename_folder"

    const/4 v12, 0x0

    .line 2800
    invoke-virtual {p1, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2802
    .local v3, "renameFolder":Z
    if-eqz v3, :cond_5

    .line 2804
    const-string v11, "launcher.rename_folder_id"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 2805
    .local v4, "id":J
    sget-object v11, Lcom/android/launcher4/Launcher;->mModel:Lcom/android/launcher4/LauncherModel;

    sget-object v12, Lcom/android/launcher4/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v11, p0, v12, v4, v5}, Lcom/android/launcher4/LauncherModel;->getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher4/FolderInfo;

    move-result-object v11

    iput-object v11, p0, Lcom/android/launcher4/Launcher;->mFolderInfo:Lcom/android/launcher4/FolderInfo;

    .line 2806
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/launcher4/Launcher;->mRestoring:Z

    .line 2810
    .end local v4    # "id":J
    :cond_5
    iget-object v11, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher4/AppsCustomizeTabHost;

    if-eqz v11, :cond_0

    .line 2811
    const-string v11, "apps_customize_currentTab"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2812
    .local v0, "curTab":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 2813
    iget-object v11, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher4/AppsCustomizeTabHost;

    .line 2814
    iget-object v12, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher4/AppsCustomizeTabHost;

    .line 2815
    invoke-virtual {v12, v0}, Lcom/android/launcher4/AppsCustomizeTabHost;->getContentTypeForTabTag(Ljava/lang/String;)Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    move-result-object v12

    .line 2814
    invoke-virtual {v11, v12}, Lcom/android/launcher4/AppsCustomizeTabHost;->setContentTypeImmediate(Lcom/android/launcher4/AppsCustomizePagedView$ContentType;)V

    .line 2816
    iget-object v11, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    iget-object v12, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    .line 2817
    invoke-virtual {v12}, Lcom/android/launcher4/AppsCustomizePagedView;->getCurrentPage()I

    move-result v12

    .line 2816
    invoke-virtual {v11, v12}, Lcom/android/launcher4/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 2820
    :cond_6
    const-string v11, "apps_customize_currentIndex"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2821
    .local v1, "currentIndex":I
    iget-object v11, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v11, v1}, Lcom/android/launcher4/AppsCustomizePagedView;->restorePageForIndex(I)V

    goto/16 :goto_0
.end method

.method private roadRun(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 2366
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mRoad:Landroid/widget/ImageView;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/launcher4/Launcher$29;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher4/Launcher$29;-><init>(Lcom/android/launcher4/Launcher;I)V

    invoke-static {p1, v0, v1, v2}, Lcom/syu/util/AnimationUitls;->animateRawManuallyFromXML(ILandroid/widget/ImageView;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 2371
    return-void
.end method

.method private sendAdvanceMessage(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    const/4 v2, 0x1

    .line 5227
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5228
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5229
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher4/Launcher;->mAutoAdvanceSentTime:J

    .line 5231
    return-void
.end method

.method private setCustomContentHintVisibility(Lcom/android/launcher4/Cling;Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "cling"    # Lcom/android/launcher4/Cling;
    .param p2, "ccHintStr"    # Ljava/lang/String;
    .param p3, "visible"    # Z
    .param p4, "animate"    # Z

    .prologue
    const-wide/16 v4, 0xfa

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 9031
    .line 9032
    const v1, 0x7f11004c

    invoke-virtual {p1, v1}, Lcom/android/launcher4/Cling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9033
    .local v0, "ccHint":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 9034
    if-eqz p3, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9035
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9036
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9037
    if-eqz p4, :cond_1

    .line 9038
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 9039
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 9040
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 9059
    :cond_0
    :goto_0
    return-void

    .line 9042
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 9045
    :cond_2
    if-eqz p4, :cond_3

    .line 9046
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 9047
    new-instance v2, Lcom/android/launcher4/Launcher$104;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher4/Launcher$104;-><init>(Lcom/android/launcher4/Launcher;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 9052
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 9054
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 9055
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setGone(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2218
    if-eqz p1, :cond_0

    .line 2219
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2220
    :cond_0
    return-void
.end method

.method private setPivotsForZoom(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scaleFactor"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 7228
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 7229
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 7230
    return-void
.end method

.method static setScreen(I)V
    .locals 2
    .param p0, "screen"    # I

    .prologue
    .line 1160
    sget-object v1, Lcom/android/launcher4/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1161
    :try_start_0
    sput p0, Lcom/android/launcher4/Launcher;->sScreen:I

    .line 1160
    monitor-exit v1

    .line 1163
    return-void

    .line 1160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setSoundBtn()V
    .locals 3

    .prologue
    const v2, 0x7f020023

    .line 2552
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Sound"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2553
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Sound"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2554
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2556
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "CloseSound"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2557
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "CloseSound"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2558
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2560
    :cond_1
    return-void
.end method

.method private setSoundCloseBtn()V
    .locals 3

    .prologue
    const v2, 0x7f020022

    .line 2563
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Sound"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2564
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "Sound"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2565
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2567
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "CloseSound"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2568
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v1, "CloseSound"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2569
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2571
    :cond_1
    return-void
.end method

.method private setVisible(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2222
    if-eqz p1, :cond_0

    .line 2223
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2224
    :cond_0
    return-void
.end method

.method private setWorkspaceBackground(Z)V
    .locals 0
    .param p1, "workspace"    # Z

    .prologue
    .line 7235
    return-void
.end method

.method private setupViews()V
    .locals 12

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 2985
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mDragController:Lcom/android/launcher4/DragController;

    .line 2987
    .local v0, "dragController":Lcom/android/launcher4/DragController;
    const v4, 0x7f110068

    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher4/Launcher;->mLauncherView:Landroid/view/View;

    .line 2988
    const v4, 0x7f110069

    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/DragLayer;

    iput-object v4, p0, Lcom/android/launcher4/Launcher;->mDragLayer:Lcom/android/launcher4/DragLayer;

    .line 2989
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mDragLayer:Lcom/android/launcher4/DragLayer;

    const v7, 0x7f11006a

    invoke-virtual {v4, v7}, Lcom/android/launcher4/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/Workspace;

    sput-object v4, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 2991
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mLauncherView:Landroid/view/View;

    .line 2992
    const/16 v7, 0x600

    invoke-virtual {v4, v7}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2996
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mDragLayer:Lcom/android/launcher4/DragLayer;

    invoke-virtual {v4, p0, v0}, Lcom/android/launcher4/DragLayer;->setup(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/DragController;)V

    .line 2999
    const v4, 0x7f11006b

    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    .line 3005
    const v4, 0x7f11006c

    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher4/Launcher;->mOverviewPanel:Landroid/view/View;

    .line 3006
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->widget_button:I

    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sput-object v4, Lcom/android/launcher4/Launcher;->widgetButton:Landroid/view/View;

    .line 3007
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->livewallpaper_button:I

    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sput-object v4, Lcom/android/launcher4/Launcher;->liveWallPaperButton:Landroid/view/View;

    .line 3008
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->wallpaper_button:I

    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sput-object v4, Lcom/android/launcher4/Launcher;->wallpaperButton:Landroid/view/View;

    .line 3010
    sget-object v4, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0a0024

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3011
    sget-object v4, Lcom/android/launcher4/Launcher;->widgetButton:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 3012
    sget-object v4, Lcom/android/launcher4/Launcher;->widgetButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3013
    sget-object v4, Lcom/android/launcher4/Launcher;->widgetButton:Landroid/view/View;

    new-instance v7, Lcom/android/launcher4/Launcher$42;

    invoke-direct {v7, p0}, Lcom/android/launcher4/Launcher$42;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3030
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 3031
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    .line 3032
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v7

    iget v7, v7, Lshare/ResValue;->syu_app_button:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 3031
    iput-object v4, p0, Lcom/android/launcher4/Launcher;->mAllAppsButton:Landroid/view/View;

    .line 3034
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->initHashMap()V

    .line 3036
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mAllAppsButton:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 3037
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mAllAppsButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3038
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mAllAppsButton:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3041
    :cond_2
    sget-object v4, Lcom/android/launcher4/Launcher;->wallpaperButton:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 3042
    sget-object v4, Lcom/android/launcher4/Launcher;->wallpaperButton:Landroid/view/View;

    new-instance v7, Lcom/android/launcher4/Launcher$43;

    invoke-direct {v7, p0}, Lcom/android/launcher4/Launcher$43;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3048
    sget-object v4, Lcom/android/launcher4/Launcher;->wallpaperButton:Landroid/view/View;

    .line 3049
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3052
    :cond_3
    sget-object v4, Lcom/android/launcher4/Launcher;->liveWallPaperButton:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 3053
    sget-object v4, Lcom/android/launcher4/Launcher;->liveWallPaperButton:Landroid/view/View;

    new-instance v7, Lcom/android/launcher4/Launcher$44;

    invoke-direct {v7, p0}, Lcom/android/launcher4/Launcher$44;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3061
    :cond_4
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->settings_button:I

    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3062
    .local v2, "settingsButton":Landroid/view/View;
    if-eqz v2, :cond_5

    .line 3063
    new-instance v4, Lcom/android/launcher4/Launcher$45;

    invoke-direct {v4, p0}, Lcom/android/launcher4/Launcher$45;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3069
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3072
    :cond_5
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mOverviewPanel:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    .line 3075
    sget-object v4, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v4, v5}, Lcom/android/launcher4/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 3076
    sget-object v4, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v4, p0}, Lcom/android/launcher4/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3077
    sget-object v4, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v4, v0}, Lcom/android/launcher4/Workspace;->setup(Lcom/android/launcher4/DragController;)V

    .line 3078
    sget-object v4, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0, v4}, Lcom/android/launcher4/DragController;->addDragListener(Lcom/android/launcher4/DragController$DragListener;)V

    .line 3081
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mDragLayer:Lcom/android/launcher4/DragLayer;

    .line 3082
    const v7, 0x7f110076

    invoke-virtual {v4, v7}, Lcom/android/launcher4/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/SearchDropTargetBar;

    .line 3081
    iput-object v4, p0, Lcom/android/launcher4/Launcher;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    .line 3085
    const v4, 0x7f110074

    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/AppsCustomizeTabHost;

    iput-object v4, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher4/AppsCustomizeTabHost;

    .line 3086
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher4/AppsCustomizeTabHost;

    .line 3087
    const v7, 0x7f110010

    invoke-virtual {v4, v7}, Lcom/android/launcher4/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/AppsCustomizePagedView;

    .line 3086
    iput-object v4, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    .line 3088
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v4, p0, v0}, Lcom/android/launcher4/AppsCustomizePagedView;->setup(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/DragController;)V

    .line 3092
    sget-object v4, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0, v4}, Lcom/android/launcher4/DragController;->setDragScoller(Lcom/android/launcher4/DragScroller;)V

    .line 3093
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mDragLayer:Lcom/android/launcher4/DragLayer;

    invoke-virtual {v0, v4}, Lcom/android/launcher4/DragController;->setScrollView(Landroid/view/View;)V

    .line 3094
    sget-object v4, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0, v4}, Lcom/android/launcher4/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 3095
    sget-object v4, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0, v4}, Lcom/android/launcher4/DragController;->addDropTarget(Lcom/android/launcher4/DropTarget;)V

    .line 3096
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    if-eqz v4, :cond_6

    .line 3097
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    invoke-virtual {v4, p0, v0}, Lcom/android/launcher4/SearchDropTargetBar;->setup(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/DragController;)V

    .line 3100
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0a0008

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3101
    const-string v4, "Launcher"

    const-string v7, "adding WeightWatcher"

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    new-instance v4, Lcom/android/launcher4/WeightWatcher;

    invoke-direct {v4, p0}, Lcom/android/launcher4/WeightWatcher;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/launcher4/Launcher;->mWeightWatcher:Landroid/view/View;

    .line 3103
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mWeightWatcher:Landroid/view/View;

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    .line 3104
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mLauncherView:Landroid/view/View;

    check-cast v4, Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher4/Launcher;->mWeightWatcher:Landroid/view/View;

    .line 3105
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 3106
    const/4 v9, -0x1

    .line 3107
    const/4 v10, -0x2

    .line 3108
    const/16 v11, 0x50

    .line 3105
    invoke-direct {v8, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 3104
    invoke-virtual {v4, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3110
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->shouldShowWeightWatcher()Z

    move-result v3

    .line 3111
    .local v3, "show":Z
    iget-object v7, p0, Lcom/android/launcher4/Launcher;->mWeightWatcher:Landroid/view/View;

    if-eqz v3, :cond_b

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3114
    .end local v3    # "show":Z
    :cond_7
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->first_layout:I

    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/android/launcher4/Launcher;->firstLayout:Landroid/widget/RelativeLayout;

    .line 3116
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->first_app:I

    .line 3115
    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3118
    .local v1, "firstClickApp":Landroid/widget/ImageView;
    if-eqz v1, :cond_8

    .line 3119
    new-instance v4, Lcom/android/launcher4/Launcher$46;

    invoke-direct {v4, p0}, Lcom/android/launcher4/Launcher$46;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3134
    :cond_8
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->firstLayout:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_9

    .line 3135
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->firstLayout:Landroid/widget/RelativeLayout;

    new-instance v5, Lcom/android/launcher4/Launcher$47;

    invoke-direct {v5, p0}, Lcom/android/launcher4/Launcher$47;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3145
    :cond_9
    return-void

    .line 3025
    .end local v1    # "firstClickApp":Landroid/widget/ImageView;
    .end local v2    # "settingsButton":Landroid/view/View;
    :cond_a
    sget-object v4, Lcom/android/launcher4/Launcher;->widgetButton:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 3026
    sget-object v4, Lcom/android/launcher4/Launcher;->widgetButton:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .restart local v2    # "settingsButton":Landroid/view/View;
    .restart local v3    # "show":Z
    :cond_b
    move v4, v6

    .line 3111
    goto :goto_1
.end method

.method private shouldShowWeightWatcher()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 8278
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    .line 8279
    .local v2, "spKey":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Lcom/android/launcher4/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 8280
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v3, "debug.show_mem"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 8283
    .local v0, "show":Z
    return v0
.end method

.method private showAppsCustomizeHelper(ZZ)V
    .locals 2
    .param p1, "animated"    # Z
    .param p2, "springLoaded"    # Z

    .prologue
    .line 7309
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    .line 7310
    invoke-virtual {v1}, Lcom/android/launcher4/AppsCustomizePagedView;->getContentType()Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    move-result-object v0

    .line 7311
    .local v0, "contentType":Lcom/android/launcher4/AppsCustomizePagedView$ContentType;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher4/Launcher;->showAppsCustomizeHelper(ZZLcom/android/launcher4/AppsCustomizePagedView$ContentType;)V

    .line 7312
    return-void
.end method

.method private showAppsCustomizeHelper(ZZLcom/android/launcher4/AppsCustomizePagedView$ContentType;)V
    .locals 20
    .param p1, "animated"    # Z
    .param p2, "springLoaded"    # Z
    .param p3, "contentType"    # Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    .prologue
    .line 7317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 7318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 7319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 7320
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher4/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 7322
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 7325
    .local v14, "res":Landroid/content/res/Resources;
    const v3, 0x7f0b0007

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 7327
    .local v11, "duration":I
    const v3, 0x7f0b000a

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 7329
    .local v12, "fadeDuration":I
    const v3, 0x7f0b0009

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v6, v3

    .line 7330
    .local v6, "scale":F
    sget-object v7, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 7331
    .local v7, "fromView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher4/AppsCustomizeTabHost;

    .line 7333
    .local v5, "toView":Lcom/android/launcher4/AppsCustomizeTabHost;
    const v3, 0x7f0b000e

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    .line 7335
    .local v16, "startDelay":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/launcher4/Launcher;->setPivotsForZoom(Landroid/view/View;F)V

    .line 7336
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher4/Launcher;->hideHotseat(Z)V

    .line 7339
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 7340
    sget-object v8, Lcom/android/launcher4/Workspace$State;->SMALL:Lcom/android/launcher4/Workspace$State;

    .line 7339
    move/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v3, v8, v0, v1}, Lcom/android/launcher4/Workspace;->getChangeStateAnimation(Lcom/android/launcher4/Workspace$State;ZLcom/android/launcher4/AppsCustomizePagedView$ContentType;)Landroid/animation/Animator;

    move-result-object v17

    .line 7341
    .local v17, "workspaceAnim":Landroid/animation/Animator;
    sget-boolean v3, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-nez v3, :cond_1

    .line 7343
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher4/AppsCustomizeTabHost;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/launcher4/AppsCustomizeTabHost;->setContentTypeImmediate(Lcom/android/launcher4/AppsCustomizePagedView$ContentType;)V

    .line 7346
    :cond_1
    if-eqz p1, :cond_7

    .line 7347
    invoke-virtual {v5, v6}, Lcom/android/launcher4/AppsCustomizeTabHost;->setScaleX(F)V

    .line 7348
    invoke-virtual {v5, v6}, Lcom/android/launcher4/AppsCustomizeTabHost;->setScaleY(F)V

    .line 7349
    new-instance v15, Lcom/android/launcher4/LauncherViewPropertyAnimator;

    invoke-direct {v15, v5}, Lcom/android/launcher4/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 7351
    .local v15, "scaleAnim":Lcom/android/launcher4/LauncherViewPropertyAnimator;
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v15, v3}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher4/LauncherViewPropertyAnimator;

    move-result-object v3

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v3, v8}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher4/LauncherViewPropertyAnimator;

    move-result-object v3

    int-to-long v0, v11

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v3

    .line 7352
    new-instance v8, Lcom/android/launcher4/Workspace$ZoomOutInterpolator;

    invoke-direct {v8}, Lcom/android/launcher4/Workspace$ZoomOutInterpolator;-><init>()V

    invoke-virtual {v3, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7354
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/android/launcher4/AppsCustomizeTabHost;->setVisibility(I)V

    .line 7355
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/android/launcher4/AppsCustomizeTabHost;->setAlpha(F)V

    .line 7357
    const-string v3, "alpha"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    .line 7356
    invoke-static {v5, v3, v8}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 7357
    int-to-long v0, v12

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 7358
    .local v9, "alphaAnim":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-direct {v3, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v9, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7359
    new-instance v3, Lcom/android/launcher4/Launcher$83;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v7, v5}, Lcom/android/launcher4/Launcher$83;-><init>(Lcom/android/launcher4/Launcher;Landroid/view/View;Lcom/android/launcher4/AppsCustomizeTabHost;)V

    invoke-virtual {v9, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7373
    invoke-static {}, Lcom/android/launcher4/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher4/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 7374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 7375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 7377
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/android/launcher4/Launcher$84;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v8, v0, v5, v7, v1}, Lcom/android/launcher4/Launcher$84;-><init>(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/AppsCustomizeTabHost;Landroid/view/View;Z)V

    invoke-virtual {v3, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7399
    if-eqz v17, :cond_2

    .line 7400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 7403
    :cond_2
    const/4 v10, 0x0

    .line 7405
    .local v10, "delayAnim":Z
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v1, v3}, Lcom/android/launcher4/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 7406
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v3}, Lcom/android/launcher4/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 7411
    invoke-interface {v5}, Lcom/android/launcher4/LauncherTransitionable;->getContent()Landroid/view/View;

    move-result-object v3

    .line 7412
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 7411
    if-eqz v3, :cond_3

    .line 7413
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher4/Workspace;->getMeasuredWidth()I

    move-result v3

    if-eqz v3, :cond_3

    .line 7414
    invoke-virtual {v5}, Lcom/android/launcher4/AppsCustomizeTabHost;->getMeasuredWidth()I

    move-result v3

    if-nez v3, :cond_4

    .line 7415
    :cond_3
    const/4 v10, 0x1

    .line 7418
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 7419
    .local v4, "stateAnimation":Landroid/animation/AnimatorSet;
    new-instance v2, Lcom/android/launcher4/Launcher$85;

    move-object/from16 v3, p0

    move/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher4/Launcher$85;-><init>(Lcom/android/launcher4/Launcher;Landroid/animation/AnimatorSet;Lcom/android/launcher4/AppsCustomizeTabHost;FLandroid/view/View;Z)V

    .line 7433
    .local v2, "startAnimRunnable":Ljava/lang/Runnable;
    if-eqz v10, :cond_6

    .line 7434
    invoke-virtual {v5}, Lcom/android/launcher4/AppsCustomizeTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v13

    .line 7435
    .local v13, "observer":Landroid/view/ViewTreeObserver;
    new-instance v3, Lcom/android/launcher4/Launcher$86;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2, v5}, Lcom/android/launcher4/Launcher$86;-><init>(Lcom/android/launcher4/Launcher;Ljava/lang/Runnable;Lcom/android/launcher4/AppsCustomizeTabHost;)V

    invoke-virtual {v13, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7468
    .end local v2    # "startAnimRunnable":Ljava/lang/Runnable;
    .end local v4    # "stateAnimation":Landroid/animation/AnimatorSet;
    .end local v9    # "alphaAnim":Landroid/animation/ObjectAnimator;
    .end local v10    # "delayAnim":Z
    .end local v13    # "observer":Landroid/view/ViewTreeObserver;
    .end local v15    # "scaleAnim":Lcom/android/launcher4/LauncherViewPropertyAnimator;
    :goto_0
    sget-object v3, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    move-object/from16 v0, p3

    if-ne v0, v3, :cond_5

    .line 7469
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 7471
    :cond_5
    return-void

    .line 7443
    .restart local v2    # "startAnimRunnable":Ljava/lang/Runnable;
    .restart local v4    # "stateAnimation":Landroid/animation/AnimatorSet;
    .restart local v9    # "alphaAnim":Landroid/animation/ObjectAnimator;
    .restart local v10    # "delayAnim":Z
    .restart local v15    # "scaleAnim":Lcom/android/launcher4/LauncherViewPropertyAnimator;
    :cond_6
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 7446
    .end local v2    # "startAnimRunnable":Ljava/lang/Runnable;
    .end local v4    # "stateAnimation":Landroid/animation/AnimatorSet;
    .end local v9    # "alphaAnim":Landroid/animation/ObjectAnimator;
    .end local v10    # "delayAnim":Z
    .end local v15    # "scaleAnim":Lcom/android/launcher4/LauncherViewPropertyAnimator;
    :cond_7
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/android/launcher4/AppsCustomizeTabHost;->setTranslationX(F)V

    .line 7447
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/android/launcher4/AppsCustomizeTabHost;->setTranslationY(F)V

    .line 7448
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v5, v3}, Lcom/android/launcher4/AppsCustomizeTabHost;->setScaleX(F)V

    .line 7449
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v5, v3}, Lcom/android/launcher4/AppsCustomizeTabHost;->setScaleY(F)V

    .line 7450
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/android/launcher4/AppsCustomizeTabHost;->setVisibility(I)V

    .line 7453
    if-nez p2, :cond_8

    .line 7454
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher4/LauncherAppState;->isScreenLarge()Z

    move-result v3

    if-nez v3, :cond_8

    .line 7456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    if-eqz v3, :cond_8

    .line 7457
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/android/launcher4/SearchDropTargetBar;->hideSearchBar(Z)V

    .line 7460
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v1, v3}, Lcom/android/launcher4/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 7461
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v1, v3}, Lcom/android/launcher4/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 7462
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v1, v3}, Lcom/android/launcher4/Launcher;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 7463
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v3}, Lcom/android/launcher4/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 7464
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v3}, Lcom/android/launcher4/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 7465
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v3}, Lcom/android/launcher4/Launcher;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 7357
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private shrinkAndFadeInFolderIcon(Lcom/android/launcher4/FolderIcon;)V
    .locals 10
    .param p1, "fi"    # Lcom/android/launcher4/FolderIcon;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 6945
    if-nez p1, :cond_0

    .line 6976
    :goto_0
    return-void

    .line 6948
    :cond_0
    const-string v5, "alpha"

    new-array v6, v8, [F

    aput v9, v6, v7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 6949
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string v5, "scaleX"

    new-array v6, v8, [F

    .line 6950
    aput v9, v6, v7

    .line 6949
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 6951
    .local v3, "scaleX":Landroid/animation/PropertyValuesHolder;
    const-string v5, "scaleY"

    new-array v6, v8, [F

    .line 6952
    aput v9, v6, v7

    .line 6951
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 6954
    .local v4, "scaleY":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p1}, Lcom/android/launcher4/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/CellLayout;

    .line 6957
    .local v1, "cl":Lcom/android/launcher4/CellLayout;
    iget-object v5, p0, Lcom/android/launcher4/Launcher;->mDragLayer:Lcom/android/launcher4/DragLayer;

    iget-object v6, p0, Lcom/android/launcher4/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/android/launcher4/DragLayer;->removeView(Landroid/view/View;)V

    .line 6958
    invoke-direct {p0, p1}, Lcom/android/launcher4/Launcher;->copyFolderIconToImage(Lcom/android/launcher4/FolderIcon;)V

    .line 6960
    iget-object v5, p0, Lcom/android/launcher4/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v7

    aput-object v3, v6, v8

    const/4 v7, 0x2

    aput-object v4, v6, v7

    .line 6959
    invoke-static {v5, v6}, Lcom/android/launcher4/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 6961
    .local v2, "oa":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 6962
    const v6, 0x7f0b0017

    .line 6961
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6963
    new-instance v5, Lcom/android/launcher4/Launcher$81;

    invoke-direct {v5, p0, v1, p1}, Lcom/android/launcher4/Launcher$81;-><init>(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/CellLayout;Lcom/android/launcher4/FolderIcon;)V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6975
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private skipCustomClingIfNoAccounts()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 8999
    const v5, 0x7f110070

    invoke-virtual {p0, v5}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/Cling;

    .line 9000
    .local v2, "cling":Lcom/android/launcher4/Cling;
    invoke-virtual {v2}, Lcom/android/launcher4/Cling;->getDrawIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 9001
    const-string v6, "workspace_custom"

    .line 9000
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 9002
    .local v3, "customCling":Z
    if-eqz v3, :cond_0

    .line 9003
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 9004
    .local v1, "am":Landroid/accounts/AccountManager;
    if-nez v1, :cond_1

    .line 9009
    .end local v1    # "am":Landroid/accounts/AccountManager;
    :cond_0
    :goto_0
    return v4

    .line 9006
    .restart local v1    # "am":Landroid/accounts/AccountManager;
    :cond_1
    const-string v5, "com.google"

    invoke-virtual {v1, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 9007
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v5, v0

    if-nez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private startAnimation(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 2494
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->imgAdas:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/launcher4/Launcher$38;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$38;-><init>(Lcom/android/launcher4/Launcher;)V

    .line 2499
    new-instance v2, Lcom/android/launcher4/Launcher$39;

    invoke-direct {v2, p0}, Lcom/android/launcher4/Launcher$39;-><init>(Lcom/android/launcher4/Launcher;)V

    .line 2494
    invoke-static {p1, v0, v1, v2}, Lcom/syu/util/AnimationUitls;->animateRawManuallyFromXML(ILandroid/widget/ImageView;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 2506
    return-void
.end method

.method private startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "sourceBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 5551
    const-string v5, "search"

    invoke-virtual {p0, v5}, Lcom/android/launcher4/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    .line 5553
    .local v4, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {v4}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 5554
    .local v2, "globalSearchActivity":Landroid/content/ComponentName;
    if-nez v2, :cond_0

    .line 5555
    const-string v5, "Launcher"

    const-string v6, "No global search activity found."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5587
    :goto_0
    return-void

    .line 5558
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5559
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5560
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5562
    if-nez p3, :cond_4

    .line 5563
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "appSearchData":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 5569
    .restart local p3    # "appSearchData":Landroid/os/Bundle;
    :goto_1
    const-string v5, "source"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 5570
    const-string v5, "source"

    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5572
    :cond_1
    const-string v5, "app_data"

    invoke-virtual {v3, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5573
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 5574
    const-string v5, "query"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5576
    :cond_2
    if-eqz p2, :cond_3

    .line 5577
    const-string v5, "select_query"

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5580
    :cond_3
    invoke-virtual {v3, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 5582
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/launcher4/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5583
    :catch_0
    move-exception v1

    .line 5584
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Global search activity not found: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5585
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5584
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5565
    .end local v1    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local p3    # "appSearchData":Landroid/os/Bundle;
    .local v0, "appSearchData":Landroid/os/Bundle;
    move-object p3, v0

    .end local v0    # "appSearchData":Landroid/os/Bundle;
    .restart local p3    # "appSearchData":Landroid/os/Bundle;
    goto :goto_1
.end method

.method private switchSoundChannelThirdPlayer()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 3826
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/syu/car/CarStates;->getCar(Landroid/content/Context;)Lcom/syu/car/CarStates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/car/CarStates;->getTools()Lcom/syu/remote/RemoteTools;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/syu/remote/RemoteTools;->getInt(IIII)I

    move-result v0

    .line 3829
    .local v0, "currentChanne":I
    if-eq v0, v4, :cond_0

    .line 3831
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/syu/car/CarStates;->getCar(Landroid/content/Context;)Lcom/syu/car/CarStates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/car/CarStates;->getTools()Lcom/syu/remote/RemoteTools;

    move-result-object v1

    .line 3833
    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v4, v2, v3

    .line 3831
    invoke-virtual {v1, v3, v3, v2}, Lcom/syu/remote/RemoteTools;->sendInt(II[I)V

    .line 3835
    :cond_0
    return-void
.end method

.method private testRemoveTask(Ljava/lang/String;)V
    .locals 8
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 6454
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 6456
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 6457
    .local v3, "task":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 6469
    return-void

    .line 6457
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6458
    .local v1, "amTask":Landroid/app/ActivityManager$RunningTaskInfo;
    const-string v5, "test"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "RunningTaskInfo "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6462
    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 6463
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6464
    const-string v5, "hy"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "amTask.id"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6465
    iget v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->removeTask(I)Z

    goto :goto_0
.end method

.method private toggleShowWeightWatcher()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8287
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    .line 8288
    .local v3, "spKey":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Lcom/android/launcher4/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 8289
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v6, "debug.show_mem"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 8291
    .local v1, "show":Z
    if-eqz v1, :cond_1

    move v1, v4

    .line 8293
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 8294
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "debug.show_mem"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 8295
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 8297
    iget-object v5, p0, Lcom/android/launcher4/Launcher;->mWeightWatcher:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 8298
    iget-object v5, p0, Lcom/android/launcher4/Launcher;->mWeightWatcher:Landroid/view/View;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 8300
    :cond_0
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    move v1, v5

    .line 8291
    goto :goto_0

    .line 8298
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    const/16 v4, 0x8

    goto :goto_1
.end method

.method private updateAppMarketIcon()V
    .locals 0

    .prologue
    .line 8083
    return-void
.end method

.method private updateAppMarketIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .prologue
    .line 8099
    return-void
.end method

.method private updateButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 2
    .param p1, "buttonId"    # I
    .param p2, "d"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .prologue
    .line 7901
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 7902
    .local v0, "button":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7903
    return-void
.end method

.method private updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3
    .param p1, "buttonId"    # I
    .param p2, "activityName"    # Landroid/content/ComponentName;
    .param p3, "fallbackDrawableId"    # I
    .param p4, "toolbarResourceName"    # Ljava/lang/String;

    .prologue
    .line 7877
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 7878
    .local v0, "button":Landroid/widget/ImageView;
    invoke-direct {p0, p2, p4}, Lcom/android/launcher4/Launcher;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 7881
    .local v1, "toolbarIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 7884
    if-nez v1, :cond_1

    .line 7885
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7891
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    :goto_1
    return-object v2

    .line 7887
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 7891
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateGlobalIcons()V
    .locals 4

    .prologue
    .line 992
    const/4 v1, 0x0

    .line 993
    .local v1, "searchVisible":Z
    const/4 v2, 0x0

    .line 996
    .local v2, "voiceVisible":Z
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->getCurrentOrientationIndexForGlobalIcons()I

    move-result v0

    .line 997
    .local v0, "coi":I
    sget-object v3, Lcom/android/launcher4/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/launcher4/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 998
    sget-object v3, Lcom/android/launcher4/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 1002
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->updateGlobalSearchIcon()Z

    move-result v1

    .line 1003
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Launcher;->updateVoiceSearchIcon(Z)Z

    move-result v2

    .line 1005
    :cond_1
    sget-object v3, Lcom/android/launcher4/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    .line 1006
    sget-object v3, Lcom/android/launcher4/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/android/launcher4/Launcher;->updateGlobalSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 1007
    const/4 v1, 0x1

    .line 1009
    :cond_2
    sget-object v3, Lcom/android/launcher4/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    .line 1010
    sget-object v3, Lcom/android/launcher4/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/android/launcher4/Launcher;->updateVoiceSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 1011
    const/4 v2, 0x1

    .line 1018
    :cond_3
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    if-eqz v3, :cond_4

    .line 1019
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher4/SearchDropTargetBar;->onSearchPackagesChanged(ZZ)V

    .line 1022
    :cond_4
    return-void
.end method

.method private updateRoad()V
    .locals 7

    .prologue
    const/16 v6, 0x3c

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 2341
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isRoadRun = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher4/Launcher;->isRoadRun:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 2342
    iget v1, p0, Lcom/android/launcher4/Launcher;->carSpeed:I

    const/16 v2, 0x6e

    if-lt v1, v2, :cond_2

    .line 2343
    iget v1, p0, Lcom/android/launcher4/Launcher;->isRoadRun:I

    if-eq v1, v3, :cond_0

    .line 2344
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isRoadRun = 4 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher4/Launcher;->isRoadRun:I

    if-eq v2, v3, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 2345
    iput v3, p0, Lcom/android/launcher4/Launcher;->isRoadRun:I

    .line 2346
    const v0, 0x7f05000d

    invoke-direct {p0, v0}, Lcom/android/launcher4/Launcher;->roadRun(I)V

    .line 2364
    :cond_0
    :goto_1
    return-void

    .line 2344
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2348
    :cond_2
    iget v1, p0, Lcom/android/launcher4/Launcher;->carSpeed:I

    const/16 v2, 0x50

    if-lt v1, v2, :cond_3

    .line 2349
    iget v0, p0, Lcom/android/launcher4/Launcher;->isRoadRun:I

    if-eq v0, v5, :cond_0

    .line 2350
    iput v5, p0, Lcom/android/launcher4/Launcher;->isRoadRun:I

    .line 2351
    const v0, 0x7f05000f

    invoke-direct {p0, v0}, Lcom/android/launcher4/Launcher;->roadRun(I)V

    goto :goto_1

    .line 2353
    :cond_3
    iget v1, p0, Lcom/android/launcher4/Launcher;->carSpeed:I

    if-lt v1, v6, :cond_4

    .line 2354
    iget v0, p0, Lcom/android/launcher4/Launcher;->isRoadRun:I

    if-eq v0, v4, :cond_0

    .line 2355
    iput v4, p0, Lcom/android/launcher4/Launcher;->isRoadRun:I

    .line 2356
    const v0, 0x7f05000e

    invoke-direct {p0, v0}, Lcom/android/launcher4/Launcher;->roadRun(I)V

    goto :goto_1

    .line 2358
    :cond_4
    iget v1, p0, Lcom/android/launcher4/Launcher;->carSpeed:I

    if-ge v1, v6, :cond_0

    .line 2359
    iget v1, p0, Lcom/android/launcher4/Launcher;->isRoadRun:I

    if-eq v1, v0, :cond_0

    .line 2360
    iput v0, p0, Lcom/android/launcher4/Launcher;->isRoadRun:I

    .line 2361
    const v0, 0x7f05000c

    invoke-direct {p0, v0}, Lcom/android/launcher4/Launcher;->roadRun(I)V

    goto :goto_1
.end method

.method private updateRunning()V
    .locals 12

    .prologue
    const-wide/16 v2, 0x4e20

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 5234
    iget-boolean v5, p0, Lcom/android/launcher4/Launcher;->mVisible:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/launcher4/Launcher;->mUserPresent:Z

    if-eqz v5, :cond_1

    .line 5235
    iget-object v5, p0, Lcom/android/launcher4/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v1

    .line 5236
    .local v0, "autoAdvanceRunning":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher4/Launcher;->mAutoAdvanceRunning:Z

    if-eq v0, v5, :cond_0

    .line 5237
    iput-boolean v0, p0, Lcom/android/launcher4/Launcher;->mAutoAdvanceRunning:Z

    .line 5238
    if-eqz v0, :cond_3

    .line 5239
    iget-wide v4, p0, Lcom/android/launcher4/Launcher;->mAutoAdvanceTimeLeft:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 5241
    .local v2, "delay":J
    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/android/launcher4/Launcher;->sendAdvanceMessage(J)V

    .line 5254
    .end local v2    # "delay":J
    :cond_0
    :goto_2
    return-void

    .end local v0    # "autoAdvanceRunning":Z
    :cond_1
    move v0, v4

    .line 5234
    goto :goto_0

    .line 5240
    .restart local v0    # "autoAdvanceRunning":Z
    :cond_2
    iget-wide v2, p0, Lcom/android/launcher4/Launcher;->mAutoAdvanceTimeLeft:J

    goto :goto_1

    .line 5243
    :cond_3
    iget-object v5, p0, Lcom/android/launcher4/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 5245
    const-wide/16 v6, 0x0

    .line 5247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/launcher4/Launcher;->mAutoAdvanceSentTime:J

    sub-long/2addr v8, v10

    .line 5246
    sub-long v8, v2, v8

    .line 5245
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 5244
    iput-wide v6, p0, Lcom/android/launcher4/Launcher;->mAutoAdvanceTimeLeft:J

    .line 5249
    :cond_4
    iget-object v5, p0, Lcom/android/launcher4/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5250
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2
.end method

.method private updateSpeedView()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/16 v7, 0x64

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2231
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSpeed1:Landroid/widget/TextView;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSpeed2:Landroid/widget/TextView;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSpeed3:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 2315
    :cond_0
    :goto_0
    return-void

    .line 2233
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "speed = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/launcher4/Launcher;->carSpeed:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 2234
    iget v1, p0, Lcom/android/launcher4/Launcher;->carSpeed:I

    if-lt v1, v6, :cond_6

    .line 2235
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSpeed3:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher4/Launcher;->num:[I

    iget v5, p0, Lcom/android/launcher4/Launcher;->carSpeed:I

    rem-int/lit8 v5, v5, 0xa

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2237
    iget v1, p0, Lcom/android/launcher4/Launcher;->carSpeed:I

    div-int/lit8 v0, v1, 0xa

    .line 2238
    .local v0, "sp2":I
    const/16 v1, 0xa

    if-lt v0, v1, :cond_4

    .line 2239
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSpeed1:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/launcher4/Launcher;->setVisible(Landroid/view/View;)V

    .line 2240
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSpeed2:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/launcher4/Launcher;->setVisible(Landroid/view/View;)V

    .line 2241
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSpeed1:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher4/Launcher;->num:[I

    div-int/lit8 v5, v0, 0xa

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2242
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSpeed2:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher4/Launcher;->num:[I

    rem-int/lit8 v5, v0, 0xa

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2252
    :goto_1
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mRoad:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2253
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mRoad:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2256
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->updateRoad()V

    .line 2268
    .end local v0    # "sp2":I
    :goto_2
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->imgAdas:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 2271
    invoke-static {}, Lcom/syu/util/Print;->getPrint()Lcom/syu/util/Print;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "last speed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/launcher4/Launcher;->lastSpeed:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",speed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher4/Launcher;->carSpeed:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",isAnimaStart "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/launcher4/Launcher;->isAnimaStart:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/syu/util/Print;->d(Ljava/lang/String;)V

    .line 2272
    iget v1, p0, Lcom/android/launcher4/Launcher;->carSpeed:I

    if-lt v1, v8, :cond_8

    iget v1, p0, Lcom/android/launcher4/Launcher;->lastSpeed:I

    if-gt v1, v8, :cond_8

    iget v1, p0, Lcom/android/launcher4/Launcher;->carSpeed:I

    iget v4, p0, Lcom/android/launcher4/Launcher;->lastSpeed:I

    if-lt v1, v4, :cond_8

    .line 2273
    invoke-static {}, Lcom/syu/util/Print;->getPrint()Lcom/syu/util/Print;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "start -->>>>>>>>>>"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/launcher4/Launcher;->isAnimaStart:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/syu/util/Print;->d(Ljava/lang/String;)V

    .line 2274
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start -->>>>>>>>>>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/launcher4/Launcher;->isAnimaStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 2275
    iget-boolean v1, p0, Lcom/android/launcher4/Launcher;->isAnimaStart:Z

    if-nez v1, :cond_3

    .line 2276
    iput-boolean v3, p0, Lcom/android/launcher4/Launcher;->isAnimaStart:Z

    .line 2278
    sget v1, Lcom/syu/car/CarStates;->mSmallLight:I

    if-nez v1, :cond_7

    .line 2279
    const v1, 0x7f050008

    invoke-direct {p0, v1}, Lcom/android/launcher4/Launcher;->startAnimation(I)V

    .line 2284
    :goto_3
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher4/Launcher$27;

    invoke-direct {v2, p0}, Lcom/android/launcher4/Launcher$27;-><init>(Lcom/android/launcher4/Launcher;)V

    .line 2290
    const-wide/16 v4, 0x1f40

    .line 2284
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2314
    :cond_3
    :goto_4
    iget v1, p0, Lcom/android/launcher4/Launcher;->carSpeed:I

    iput v1, p0, Lcom/android/launcher4/Launcher;->lastSpeed:I

    goto/16 :goto_0

    .line 2243
    .restart local v0    # "sp2":I
    :cond_4
    if-lez v0, :cond_5

    .line 2244
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSpeed1:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/launcher4/Launcher;->setGone(Landroid/view/View;)V

    .line 2245
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSpeed2:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/launcher4/Launcher;->setVisible(Landroid/view/View;)V

    .line 2246
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSpeed2:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher4/Launcher;->num:[I

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 2248
    :cond_5
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSpeed1:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/launcher4/Launcher;->setGone(Landroid/view/View;)V

    .line 2249
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSpeed2:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/launcher4/Launcher;->setGone(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2259
    .end local v0    # "sp2":I
    :cond_6
    iput v2, p0, Lcom/android/launcher4/Launcher;->isRoadRun:I

    .line 2260
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSpeed1:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/launcher4/Launcher;->setGone(Landroid/view/View;)V

    .line 2261
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSpeed2:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/launcher4/Launcher;->setGone(Landroid/view/View;)V

    .line 2262
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSpeed3:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/launcher4/Launcher;->setVisible(Landroid/view/View;)V

    .line 2263
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSpeed3:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher4/Launcher;->num:[I

    aget v4, v4, v2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2264
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mRoad:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2265
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mRoad:Landroid/widget/ImageView;

    const v4, 0x7f020556

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 2281
    :cond_7
    const v1, 0x7f050009

    invoke-direct {p0, v1}, Lcom/android/launcher4/Launcher;->startAnimation(I)V

    goto :goto_3

    .line 2292
    :cond_8
    iget v1, p0, Lcom/android/launcher4/Launcher;->carSpeed:I

    if-ge v1, v7, :cond_9

    iget v1, p0, Lcom/android/launcher4/Launcher;->carSpeed:I

    const/16 v4, 0x32

    if-le v1, v4, :cond_9

    .line 2293
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->imgAdas:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 2294
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->imgAdas:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/launcher4/Launcher;->setGone(Landroid/view/View;)V

    .line 2295
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->adasView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/launcher4/Launcher;->setVisible(Landroid/view/View;)V

    .line 2296
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mapSpeed:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/launcher4/Launcher;->setVisible(Landroid/view/View;)V

    .line 2297
    iput-boolean v3, p0, Lcom/android/launcher4/Launcher;->isAnimaStart:Z

    goto :goto_4

    .line 2299
    :cond_9
    iget v1, p0, Lcom/android/launcher4/Launcher;->carSpeed:I

    if-ge v1, v6, :cond_c

    iget v1, p0, Lcom/android/launcher4/Launcher;->lastSpeed:I

    if-ge v1, v6, :cond_c

    .line 2300
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->imgAdas:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2302
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "end "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/launcher4/Launcher;->isAnimaStart:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v1, p0, Lcom/android/launcher4/Launcher;->isInEnd:Z

    if-eqz v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 2303
    invoke-static {}, Lcom/syu/util/Print;->getPrint()Lcom/syu/util/Print;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "end "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/launcher4/Launcher;->isAnimaStart:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/launcher4/Launcher;->isInEnd:Z

    if-eqz v5, :cond_b

    :goto_6
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/syu/util/Print;->d(Ljava/lang/String;)V

    .line 2304
    iget-boolean v1, p0, Lcom/android/launcher4/Launcher;->isAnimaStart:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/launcher4/Launcher;->isInEnd:Z

    if-nez v1, :cond_3

    .line 2305
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->end10s()V

    goto/16 :goto_4

    :cond_a
    move v1, v3

    .line 2302
    goto :goto_5

    :cond_b
    move v2, v3

    .line 2303
    goto :goto_6

    .line 2307
    :cond_c
    iget v1, p0, Lcom/android/launcher4/Launcher;->carSpeed:I

    if-lt v1, v7, :cond_3

    iget v1, p0, Lcom/android/launcher4/Launcher;->lastSpeed:I

    if-ge v1, v7, :cond_3

    .line 2308
    sget v1, Lcom/syu/car/CarStates;->mSmallLight:I

    if-nez v1, :cond_d

    .line 2309
    const v1, 0x7f05000a

    invoke-direct {p0, v1}, Lcom/android/launcher4/Launcher;->startAnimation(I)V

    goto/16 :goto_4

    .line 2311
    :cond_d
    const v1, 0x7f05000b

    invoke-direct {p0, v1}, Lcom/android/launcher4/Launcher;->startAnimation(I)V

    goto/16 :goto_4
.end method

.method private updateTextButtonWithDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "buttonId"    # I
    .param p2, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 7896
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7897
    .local v0, "button":Landroid/widget/TextView;
    invoke-virtual {v0, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 7898
    return-void
.end method

.method private updateTextButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 8
    .param p1, "buttonId"    # I
    .param p2, "activityName"    # Landroid/content/ComponentName;
    .param p3, "fallbackDrawableId"    # I
    .param p4, "toolbarResourceName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 7847
    invoke-direct {p0, p2, p4}, Lcom/android/launcher4/Launcher;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 7849
    .local v3, "toolbarIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 7850
    .local v2, "r":Landroid/content/res/Resources;
    const v6, 0x7f0d0011

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 7851
    .local v4, "w":I
    const v6, 0x7f0d0012

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 7853
    .local v1, "h":I
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7856
    .local v0, "button":Landroid/widget/TextView;
    if-nez v3, :cond_1

    .line 7857
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 7858
    invoke-virtual {v3, v7, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7859
    if-eqz v0, :cond_0

    .line 7860
    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 7868
    :cond_0
    :goto_0
    return-object v5

    .line 7864
    :cond_1
    invoke-virtual {v3, v7, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7865
    if-eqz v0, :cond_2

    .line 7866
    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 7868
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    goto :goto_0
.end method

.method private waitUntilResume(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 8171
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher4/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result v0

    return v0
.end method

.method private waitUntilResume(Ljava/lang/Runnable;Z)Z
    .locals 2
    .param p1, "run"    # Ljava/lang/Runnable;
    .param p2, "deletePreviousRunnables"    # Z

    .prologue
    .line 8157
    iget-boolean v0, p0, Lcom/android/launcher4/Launcher;->mPaused:Z

    if-eqz v0, :cond_2

    .line 8158
    const-string v0, "Launcher"

    const-string v1, "Deferring update until onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8159
    if-eqz p2, :cond_1

    .line 8160
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8163
    :cond_1
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8164
    const/4 v0, 0x1

    .line 8166
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/android/launcher4/Launcher$LocaleConfiguration;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configuration"    # Lcom/android/launcher4/Launcher$LocaleConfiguration;

    .prologue
    .line 1106
    const/4 v1, 0x0

    .line 1108
    .local v1, "out":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    const-string v3, "launcher.preferences"

    .line 1109
    const/4 v4, 0x0

    .line 1108
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1110
    .end local v1    # "out":Ljava/io/DataOutputStream;
    .local v2, "out":Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v3, p1, Lcom/android/launcher4/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1111
    iget v3, p1, Lcom/android/launcher4/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1112
    iget v3, p1, Lcom/android/launcher4/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1113
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1120
    if-eqz v2, :cond_2

    .line 1122
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v1, v2

    .line 1128
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "out":Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 1114
    :catch_0
    move-exception v3

    .line 1120
    :goto_1
    if-eqz v1, :cond_0

    .line 1122
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1123
    :catch_1
    move-exception v3

    goto :goto_0

    .line 1116
    :catch_2
    move-exception v0

    .line 1118
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v3, "launcher.preferences"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1120
    if-eqz v1, :cond_0

    .line 1122
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 1123
    :catch_3
    move-exception v3

    goto :goto_0

    .line 1119
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 1120
    :goto_3
    if-eqz v1, :cond_1

    .line 1122
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1127
    :cond_1
    :goto_4
    throw v3

    .line 1123
    .end local v1    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "out":Ljava/io/DataOutputStream;
    goto :goto_0

    :catch_5
    move-exception v4

    goto :goto_4

    .line 1119
    .end local v1    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "out":Ljava/io/DataOutputStream;
    goto :goto_3

    .line 1116
    .end local v1    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "out":Ljava/io/DataOutputStream;
    goto :goto_2

    .line 1114
    .end local v1    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "out":Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v1    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "out":Ljava/io/DataOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public activeWindow()V
    .locals 6

    .prologue
    .line 1561
    sget v1, Lcom/android/launcher4/Launcher;->isactive:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 1562
    sget-object v1, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const v2, 0x7f0c00bf

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1563
    .local v0, "str_active":Ljava/lang/String;
    sget v1, Lcom/android/launcher4/Launcher;->bsp_recv:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget-boolean v1, Lcom/syu/jni/SyuJniNative;->bLoadLibOk:Z

    if-nez v1, :cond_3

    .line 1564
    :cond_0
    sget-object v1, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const v2, 0x7f0c00c0

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1568
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher4/Launcher;->activestep:Z

    if-eqz v1, :cond_2

    .line 1569
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Launcher;->active_launcher(Ljava/lang/String;)V

    .line 1570
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher4/Launcher;->activestep:Z

    .line 1571
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher4/Launcher$25;

    invoke-direct {v2, p0}, Lcom/android/launcher4/Launcher$25;-><init>(Lcom/android/launcher4/Launcher;)V

    .line 1575
    const-wide/16 v4, 0x1388

    .line 1571
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1579
    .end local v0    # "str_active":Ljava/lang/String;
    :cond_2
    return-void

    .line 1565
    .restart local v0    # "str_active":Ljava/lang/String;
    :cond_3
    sget v1, Lcom/android/launcher4/Launcher;->activekey:I

    if-nez v1, :cond_1

    .line 1566
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const v3, 0x7f0c00c1

    invoke-virtual {v2, v3}, Lcom/android/launcher4/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const v3, 0x7f0c00c2

    invoke-virtual {v2, v3}, Lcom/android/launcher4/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher4/Launcher;->str_device:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected active_launcher(Ljava/lang/String;)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1231
    sget-object v3, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const v4, 0x7f0c00bc

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1232
    .local v2, "str_title":Ljava/lang/String;
    sget-object v3, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const v4, 0x7f0c00bd

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1233
    .local v1, "str_btn":Ljava/lang/String;
    sget v3, Lcom/android/launcher4/Launcher;->bsp_recv:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 1234
    sget-object v3, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const v4, 0x7f0c00be

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1235
    sget-object v3, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const v4, 0x7f0c0018

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1237
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1238
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1239
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1240
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1242
    new-instance v3, Lcom/android/launcher4/Launcher$22;

    invoke-direct {v3, p0}, Lcom/android/launcher4/Launcher$22;-><init>(Lcom/android/launcher4/Launcher;)V

    .line 1241
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1264
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher4/Launcher;->activeAlertDialog:Landroid/app/AlertDialog;

    .line 1265
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->activeAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1266
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->activeAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1291
    return-void
.end method

.method addAppWidgetFromDrop(Lcom/android/launcher4/PendingAddWidgetInfo;JJ[I[I[I)V
    .locals 10
    .param p1, "info"    # Lcom/android/launcher4/PendingAddWidgetInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cell"    # [I
    .param p7, "span"    # [I
    .param p8, "loc"    # [I

    .prologue
    .line 5689
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->resetAddInfo()V

    .line 5690
    iget-object v6, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iput-wide p2, p1, Lcom/android/launcher4/PendingAddWidgetInfo;->container:J

    iput-wide p2, v6, Lcom/android/launcher4/ItemInfo;->container:J

    .line 5691
    iget-object v6, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iput-wide p4, p1, Lcom/android/launcher4/PendingAddWidgetInfo;->screenId:J

    iput-wide p4, v6, Lcom/android/launcher4/ItemInfo;->screenId:J

    .line 5692
    iget-object v6, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    move-object/from16 v0, p8

    iput-object v0, v6, Lcom/android/launcher4/ItemInfo;->dropPos:[I

    .line 5693
    iget-object v6, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget v7, p1, Lcom/android/launcher4/PendingAddWidgetInfo;->minSpanX:I

    iput v7, v6, Lcom/android/launcher4/ItemInfo;->minSpanX:I

    .line 5694
    iget-object v6, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget v7, p1, Lcom/android/launcher4/PendingAddWidgetInfo;->minSpanY:I

    iput v7, v6, Lcom/android/launcher4/ItemInfo;->minSpanY:I

    .line 5696
    if-eqz p6, :cond_0

    .line 5697
    iget-object v6, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    const/4 v7, 0x0

    aget v7, p6, v7

    iput v7, v6, Lcom/android/launcher4/ItemInfo;->cellX:I

    .line 5698
    iget-object v6, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    const/4 v7, 0x1

    aget v7, p6, v7

    iput v7, v6, Lcom/android/launcher4/ItemInfo;->cellY:I

    .line 5700
    :cond_0
    if-eqz p7, :cond_1

    .line 5701
    iget-object v6, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    const/4 v7, 0x0

    aget v7, p7, v7

    iput v7, v6, Lcom/android/launcher4/ItemInfo;->spanX:I

    .line 5702
    iget-object v6, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    const/4 v7, 0x1

    aget v7, p7, v7

    iput v7, v6, Lcom/android/launcher4/ItemInfo;->spanY:I

    .line 5705
    :cond_1
    iget-object v2, p1, Lcom/android/launcher4/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 5707
    .local v2, "hostView":Landroid/appwidget/AppWidgetHostView;
    if-eqz v2, :cond_2

    .line 5708
    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    .line 5709
    .local v1, "appWidgetId":I
    iget-object v6, p1, Lcom/android/launcher4/PendingAddWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0, v1, p1, v2, v6}, Lcom/android/launcher4/Launcher;->addAppWidgetImpl(ILcom/android/launcher4/ItemInfo;Landroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 5743
    :goto_0
    return-void

    .line 5715
    .end local v1    # "appWidgetId":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getAppWidgetHost()Lcom/android/launcher4/LauncherAppWidgetHost;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher4/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 5716
    .restart local v1    # "appWidgetId":I
    iget-object v4, p1, Lcom/android/launcher4/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    .line 5718
    .local v4, "options":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 5719
    .local v5, "success":Z
    if-eqz v4, :cond_3

    .line 5720
    iget-object v6, p0, Lcom/android/launcher4/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 5721
    iget-object v7, p1, Lcom/android/launcher4/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 5720
    invoke-virtual {v6, v1, v7, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v5

    .line 5726
    :goto_1
    if-eqz v5, :cond_4

    .line 5727
    const/4 v6, 0x0

    iget-object v7, p1, Lcom/android/launcher4/PendingAddWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0, v1, p1, v6, v7}, Lcom/android/launcher4/Launcher;->addAppWidgetImpl(ILcom/android/launcher4/ItemInfo;Landroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_0

    .line 5723
    :cond_3
    iget-object v6, p0, Lcom/android/launcher4/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 5724
    iget-object v7, p1, Lcom/android/launcher4/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 5723
    invoke-virtual {v6, v1, v7}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v5

    goto :goto_1

    .line 5729
    :cond_4
    iget-object v6, p1, Lcom/android/launcher4/PendingAddWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v6, p0, Lcom/android/launcher4/Launcher;->mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 5730
    new-instance v3, Landroid/content/Intent;

    .line 5731
    const-string v6, "android.appwidget.action.APPWIDGET_BIND"

    .line 5730
    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5732
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "appWidgetId"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5734
    const-string v6, "appWidgetProvider"

    .line 5735
    iget-object v7, p1, Lcom/android/launcher4/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 5734
    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5740
    const/16 v6, 0xb

    invoke-virtual {p0, v3, v6}, Lcom/android/launcher4/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method addAppWidgetImpl(ILcom/android/launcher4/ItemInfo;Landroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 9
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Lcom/android/launcher4/ItemInfo;
    .param p3, "boundWidget"    # Landroid/appwidget/AppWidgetHostView;
    .param p4, "appWidgetInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 5620
    iget-object v0, p4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 5621
    iput-object p4, p0, Lcom/android/launcher4/Launcher;->mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 5622
    const-string v0, "LauncherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appWidgetInfo:===="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5624
    new-instance v8, Landroid/content/Intent;

    .line 5625
    const-string v0, "android.appwidget.action.APPWIDGET_CONFIGURE"

    .line 5624
    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5626
    .local v8, "intent":Landroid/content/Intent;
    iget-object v0, p4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5627
    const-string v0, "appWidgetId"

    invoke-virtual {v8, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5629
    const/4 v0, 0x5

    .line 5628
    invoke-static {p0, v8, v0}, Lcom/android/launcher4/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 5638
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 5632
    :cond_0
    const-string v0, "LauncherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appwdigetId:===="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5633
    iget-wide v2, p2, Lcom/android/launcher4/ItemInfo;->container:J

    iget-wide v4, p2, Lcom/android/launcher4/ItemInfo;->screenId:J

    move-object v0, p0

    move v1, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher4/Launcher;->completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 5636
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher4/Launcher;->exitSpringLoadedDragModeDelayed(ZZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected addCustomContentToLeft()V
    .locals 0

    .prologue
    .line 967
    return-void
.end method

.method addExternalItemToScreen(Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/CellLayout;)V
    .locals 1
    .param p1, "itemInfo"    # Lcom/android/launcher4/ItemInfo;
    .param p2, "layout"    # Lcom/android/launcher4/CellLayout;

    .prologue
    .line 7793
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher4/Workspace;->addExternalItemToScreen(Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7794
    invoke-virtual {p0, p2}, Lcom/android/launcher4/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Launcher;->showOutOfSpaceMessage(Z)V

    .line 7796
    :cond_0
    return-void
.end method

.method addFolder(Lcom/android/launcher4/CellLayout;JJII)Lcom/android/launcher4/FolderIcon;
    .locals 14
    .param p1, "layout"    # Lcom/android/launcher4/CellLayout;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I

    .prologue
    .line 5773
    new-instance v1, Lcom/android/launcher4/FolderInfo;

    invoke-direct {v1}, Lcom/android/launcher4/FolderInfo;-><init>()V

    .line 5774
    .local v1, "folderInfo":Lcom/android/launcher4/FolderInfo;
    const v0, 0x7f0c0004

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher4/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 5778
    const/4 v8, 0x0

    move-object v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    .line 5777
    invoke-static/range {v0 .. v8}, Lcom/android/launcher4/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;JJIIZ)V

    .line 5779
    sget-object v0, Lcom/android/launcher4/Launcher;->sFolders:Ljava/util/HashMap;

    iget-wide v4, v1, Lcom/android/launcher4/FolderInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5782
    const v0, 0x7f04001c

    .line 5783
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mIconCache:Lcom/android/launcher4/IconCache;

    .line 5782
    invoke-static {v0, p0, p1, v1, v2}, Lcom/android/launcher4/FolderIcon;->fromXml(ILcom/android/launcher4/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher4/FolderInfo;Lcom/android/launcher4/IconCache;)Lcom/android/launcher4/FolderIcon;

    move-result-object v3

    .line 5784
    .local v3, "newFolder":Lcom/android/launcher4/FolderIcon;
    sget-object v2, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    const/4 v10, 0x1

    .line 5785
    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->isWorkspaceLocked()Z

    move-result v12

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    .line 5784
    invoke-virtual/range {v2 .. v12}, Lcom/android/launcher4/Workspace;->addInScreen(Landroid/view/View;JJIIIIZ)V

    .line 5787
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0, v3}, Lcom/android/launcher4/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher4/CellLayout;

    move-result-object v13

    .line 5788
    .local v13, "parent":Lcom/android/launcher4/CellLayout;
    invoke-virtual {v13}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 5789
    return-object v3
.end method

.method public addOnResumeCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 8175
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8176
    return-void
.end method

.method public addToCustomContentPage(Landroid/view/View;Lcom/android/launcher4/Launcher$CustomContentCallbacks;Ljava/lang/String;)Lcom/android/launcher4/Launcher$QSBScroller;
    .locals 1
    .param p1, "customContent"    # Landroid/view/View;
    .param p2, "callbacks"    # Lcom/android/launcher4/Launcher$CustomContentCallbacks;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 2661
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 2662
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher4/Workspace;->addToCustomContentPage(Landroid/view/View;Lcom/android/launcher4/Launcher$CustomContentCallbacks;Ljava/lang/String;)V

    .line 2663
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mQsbScroller:Lcom/android/launcher4/Launcher$QSBScroller;

    return-object v0
.end method

.method addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3
    .param p1, "hostView"    # Landroid/view/View;
    .param p2, "appWidgetInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 5281
    if-eqz p2, :cond_0

    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 5289
    :cond_0
    :goto_0
    return-void

    .line 5283
    :cond_1
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5284
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Advanceable;

    if-eqz v1, :cond_0

    .line 5285
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5286
    check-cast v0, Landroid/widget/Advanceable;

    .end local v0    # "v":Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    .line 5287
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->updateRunning()V

    goto :goto_0
.end method

.method public bindAddScreens(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8269
    .local p1, "orderedScreenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8270
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 8275
    return-void

    .line 8271
    :cond_0
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 8273
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 8272
    invoke-virtual {v3, v4, v5}, Lcom/android/launcher4/Workspace;->insertNewWorkspaceScreenBeforeEmptyScreen(J)J

    .line 8270
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bindAllApplications(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8616
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    sget-boolean v0, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-eqz v0, :cond_1

    .line 8617
    sget-object v0, Lcom/android/launcher4/Launcher;->mIntentsOnWorkspaceFromUpgradePath:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 8623
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher4/Launcher;->mIntentsOnWorkspaceFromUpgradePath:Ljava/util/ArrayList;

    .line 8630
    :cond_0
    :goto_0
    return-void

    .line 8626
    :cond_1
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    if-eqz v0, :cond_0

    .line 8627
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/AppsCustomizePagedView;->setApps(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public bindAppWidget(Lcom/android/launcher4/LauncherAppWidgetInfo;)V
    .locals 18
    .param p1, "item"    # Lcom/android/launcher4/LauncherAppWidgetInfo;

    .prologue
    .line 8476
    new-instance v15, Lcom/android/launcher4/Launcher$95;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/android/launcher4/Launcher$95;-><init>(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/LauncherAppWidgetInfo;)V

    .line 8481
    .local v15, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher4/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8514
    :goto_0
    return-void

    .line 8485
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 8487
    .local v16, "start":J
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bindAppWidget: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8489
    sget-object v2, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 8491
    .local v2, "workspace":Lcom/android/launcher4/Workspace;
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->appWidgetId:I

    .line 8492
    .local v13, "appWidgetId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 8493
    invoke-virtual {v3, v13}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v14

    .line 8495
    .local v14, "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bindAppWidget: id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8496
    const-string v5, " belongs to component "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v14, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8495
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->mAppWidgetHost:Lcom/android/launcher4/LauncherAppWidgetHost;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v13, v14}, Lcom/android/launcher4/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 8501
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 8502
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher4/LauncherAppWidgetInfo;->onBindAppWidget(Lcom/android/launcher4/Launcher;)V

    .line 8504
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->container:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->screenId:J

    .line 8505
    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->cellX:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->cellY:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->spanX:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->spanY:I

    const/4 v12, 0x0

    .line 8504
    invoke-virtual/range {v2 .. v12}, Lcom/android/launcher4/Workspace;->addInScreen(Landroid/view/View;JJIIIIZ)V

    .line 8506
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/android/launcher4/Launcher;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 8508
    invoke-virtual {v2}, Lcom/android/launcher4/Workspace;->requestLayout()V

    .line 8511
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bound widget id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8512
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v16

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8511
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "newScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, "addNotAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    .local p3, "addAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    .local p4, "addedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    const/4 v6, 0x0

    .line 8306
    new-instance v0, Lcom/android/launcher4/Launcher$90;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher4/Launcher$90;-><init>(Lcom/android/launcher4/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 8312
    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lcom/android/launcher4/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8335
    :cond_0
    :goto_0
    return-void

    .line 8317
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Launcher;->bindAddScreens(Ljava/util/ArrayList;)V

    .line 8321
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8322
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, p2, v6, v1, v6}, Lcom/android/launcher4/Launcher;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 8324
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 8325
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, p3, v6, v1, v2}, Lcom/android/launcher4/Launcher;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 8329
    :cond_3
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher4/Workspace;->removeExtraEmptyScreen()V

    .line 8331
    sget-boolean v1, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-nez v1, :cond_0

    if-eqz p4, :cond_0

    .line 8332
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    if-eqz v1, :cond_0

    .line 8333
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v1, p4}, Lcom/android/launcher4/AppsCustomizePagedView;->addApps(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public bindAppsUpdated(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8638
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    new-instance v0, Lcom/android/launcher4/Launcher$98;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher4/Launcher$98;-><init>(Lcom/android/launcher4/Launcher;Ljava/util/ArrayList;)V

    .line 8643
    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lcom/android/launcher4/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8655
    :cond_0
    :goto_0
    return-void

    .line 8647
    :cond_1
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    if-eqz v1, :cond_2

    .line 8648
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v1, p1}, Lcom/android/launcher4/Workspace;->updateShortcuts(Ljava/util/ArrayList;)V

    .line 8651
    :cond_2
    sget-boolean v1, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-nez v1, :cond_0

    .line 8652
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    if-eqz v1, :cond_0

    .line 8653
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v1, p1}, Lcom/android/launcher4/AppsCustomizePagedView;->updateApps(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public bindComponentsRemoved(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 2
    .param p3, "packageRemoved"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 8668
    .local p1, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    new-instance v0, Lcom/android/launcher4/Launcher$99;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher4/Launcher$99;-><init>(Lcom/android/launcher4/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 8673
    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lcom/android/launcher4/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8690
    :cond_0
    :goto_0
    return-void

    .line 8677
    :cond_1
    if-eqz p3, :cond_2

    .line 8678
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v1, p1}, Lcom/android/launcher4/Workspace;->removeItemsByPackageName(Ljava/util/ArrayList;)V

    .line 8684
    :goto_1
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mDragController:Lcom/android/launcher4/DragController;

    invoke-virtual {v1, p2, p0}, Lcom/android/launcher4/DragController;->onAppsRemoved(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 8686
    sget-boolean v1, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-nez v1, :cond_0

    .line 8687
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    if-eqz v1, :cond_0

    .line 8688
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v1, p2}, Lcom/android/launcher4/AppsCustomizePagedView;->removeApps(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 8680
    :cond_2
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v1, p2}, Lcom/android/launcher4/Workspace;->removeItemsByApplicationInfo(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public bindFolders(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher4/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8458
    .local p1, "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher4/FolderInfo;>;"
    new-instance v0, Lcom/android/launcher4/Launcher$94;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher4/Launcher$94;-><init>(Lcom/android/launcher4/Launcher;Ljava/util/HashMap;)V

    .line 8463
    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lcom/android/launcher4/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8468
    :goto_0
    return-void

    .line 8466
    :cond_0
    sget-object v1, Lcom/android/launcher4/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 8467
    sget-object v1, Lcom/android/launcher4/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public bindItems(Ljava/util/ArrayList;IIZ)V
    .locals 31
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "forceAnimateIcons"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ItemInfo;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 8344
    .local p1, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    new-instance v4, Lcom/android/launcher4/Launcher$91;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher4/Launcher$91;-><init>(Lcom/android/launcher4/Launcher;Ljava/util/ArrayList;IIZ)V

    .line 8350
    .local v4, "r":Ljava/lang/Runnable;
    invoke-static {}, Lcom/syu/util/JLog;->getInstance()Lcom/syu/util/JLog;

    move-result-object v5

    const-string v8, "Launcher bindItems"

    invoke-virtual {v5, v8}, Lcom/syu/util/JLog;->e(Ljava/lang/String;)V

    .line 8352
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher4/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8452
    :goto_0
    return-void

    .line 8358
    :cond_0
    invoke-static {}, Lcom/android/launcher4/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v18

    .line 8359
    .local v18, "anim":Landroid/animation/AnimatorSet;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 8360
    .local v20, "bounceAnims":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/animation/Animator;>;"
    if-eqz p4, :cond_2

    .line 8361
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->canRunNewAppsAnimation()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8360
    const/16 v19, 0x1

    .line 8362
    .local v19, "animateIcons":Z
    :goto_1
    sget-object v6, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 8363
    .local v6, "workspace":Lcom/android/launcher4/Workspace;
    const-wide/16 v28, -0x1

    .line 8364
    .local v28, "newShortcutsScreenId":J
    move/from16 v24, p2

    .local v24, "i":I
    :goto_2
    move/from16 v0, v24

    move/from16 v1, p3

    if-lt v0, v1, :cond_3

    .line 8421
    if-eqz v19, :cond_1

    .line 8423
    const-wide/16 v10, -0x1

    cmp-long v5, v28, v10

    if-lez v5, :cond_1

    .line 8424
    sget-object v5, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 8425
    sget-object v8, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher4/Workspace;->getNextPage()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/launcher4/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v22

    .line 8426
    .local v22, "currentScreenId":J
    sget-object v5, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 8427
    move-wide/from16 v0, v28

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher4/Workspace;->getPageIndexForScreenId(J)I

    move-result v27

    .line 8428
    .local v27, "newScreenIndex":I
    new-instance v30, Lcom/android/launcher4/Launcher$92;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher4/Launcher$92;-><init>(Lcom/android/launcher4/Launcher;Landroid/animation/AnimatorSet;Ljava/util/Collection;)V

    .line 8434
    .local v30, "startBounceAnimRunnable":Ljava/lang/Runnable;
    cmp-long v5, v28, v22

    if-eqz v5, :cond_8

    .line 8438
    sget-object v5, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    new-instance v8, Lcom/android/launcher4/Launcher$93;

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v30

    invoke-direct {v8, v0, v1, v2}, Lcom/android/launcher4/Launcher$93;-><init>(Lcom/android/launcher4/Launcher;ILjava/lang/Runnable;)V

    .line 8444
    sget v10, Lcom/android/launcher4/Launcher;->NEW_APPS_PAGE_MOVE_DELAY:I

    int-to-long v10, v10

    .line 8438
    invoke-virtual {v5, v8, v10, v11}, Lcom/android/launcher4/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8451
    .end local v22    # "currentScreenId":J
    .end local v27    # "newScreenIndex":I
    .end local v30    # "startBounceAnimRunnable":Ljava/lang/Runnable;
    :cond_1
    :goto_3
    invoke-virtual {v6}, Lcom/android/launcher4/Workspace;->requestLayout()V

    goto :goto_0

    .line 8360
    .end local v6    # "workspace":Lcom/android/launcher4/Workspace;
    .end local v19    # "animateIcons":Z
    .end local v24    # "i":I
    .end local v28    # "newShortcutsScreenId":J
    :cond_2
    const/16 v19, 0x0

    goto :goto_1

    .line 8365
    .restart local v6    # "workspace":Lcom/android/launcher4/Workspace;
    .restart local v19    # "animateIcons":Z
    .restart local v24    # "i":I
    .restart local v28    # "newShortcutsScreenId":J
    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher4/ItemInfo;

    .line 8367
    .local v26, "item":Lcom/android/launcher4/ItemInfo;
    move-object/from16 v0, v26

    iget-wide v10, v0, Lcom/android/launcher4/ItemInfo;->container:J

    const-wide/16 v12, -0x65

    cmp-long v5, v10, v12

    if-nez v5, :cond_5

    .line 8368
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 8369
    const v8, 0x7f0a000c

    .line 8368
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 8369
    if-nez v5, :cond_5

    .line 8364
    :cond_4
    :goto_4
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 8375
    :cond_5
    move-object/from16 v0, v26

    iget-wide v10, v0, Lcom/android/launcher4/ItemInfo;->container:J

    const-wide/16 v12, -0x65

    cmp-long v5, v10, v12

    if-nez v5, :cond_6

    .line 8376
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 8380
    :cond_6
    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/launcher4/ItemInfo;->itemType:I

    packed-switch v5, :pswitch_data_0

    .line 8417
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v8, "Invalid Item Type"

    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_0
    move-object/from16 v25, v26

    .line 8383
    check-cast v25, Lcom/android/launcher4/ShortcutInfo;

    .line 8384
    .local v25, "info":Lcom/android/launcher4/ShortcutInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->createShortcut(Lcom/android/launcher4/ShortcutInfo;)Landroid/view/View;

    move-result-object v7

    .line 8389
    .local v7, "shortcut":Landroid/view/View;
    move-object/from16 v0, v26

    iget-wide v10, v0, Lcom/android/launcher4/ItemInfo;->container:J

    const-wide/16 v12, -0x64

    cmp-long v5, v10, v12

    if-nez v5, :cond_7

    .line 8390
    sget-object v5, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    move-object/from16 v0, v26

    iget-wide v10, v0, Lcom/android/launcher4/ItemInfo;->screenId:J

    invoke-virtual {v5, v10, v11}, Lcom/android/launcher4/Workspace;->getScreenWithId(J)Lcom/android/launcher4/CellLayout;

    move-result-object v21

    .line 8392
    .local v21, "cl":Lcom/android/launcher4/CellLayout;
    if-eqz v21, :cond_7

    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/launcher4/ItemInfo;->cellX:I

    move-object/from16 v0, v26

    iget v8, v0, Lcom/android/launcher4/ItemInfo;->cellY:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v8}, Lcom/android/launcher4/CellLayout;->isOccupied(II)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 8393
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v8, "OCCUPIED"

    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 8397
    .end local v21    # "cl":Lcom/android/launcher4/CellLayout;
    :cond_7
    move-object/from16 v0, v26

    iget-wide v8, v0, Lcom/android/launcher4/ItemInfo;->container:J

    .line 8398
    move-object/from16 v0, v26

    iget-wide v10, v0, Lcom/android/launcher4/ItemInfo;->screenId:J

    move-object/from16 v0, v26

    iget v12, v0, Lcom/android/launcher4/ItemInfo;->cellX:I

    move-object/from16 v0, v26

    iget v13, v0, Lcom/android/launcher4/ItemInfo;->cellY:I

    const/4 v14, 0x1

    const/4 v15, 0x1

    .line 8397
    invoke-virtual/range {v6 .. v15}, Lcom/android/launcher4/Workspace;->addInScreenFromBind(Landroid/view/View;JJIIII)V

    .line 8399
    if-eqz v19, :cond_4

    .line 8401
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/view/View;->setAlpha(F)V

    .line 8402
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/view/View;->setScaleX(F)V

    .line 8403
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/view/View;->setScaleY(F)V

    .line 8404
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v7, v1}, Lcom/android/launcher4/Launcher;->createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 8405
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/launcher4/ItemInfo;->screenId:J

    move-wide/from16 v28, v0

    .line 8407
    goto/16 :goto_4

    .line 8409
    .end local v7    # "shortcut":Landroid/view/View;
    .end local v25    # "info":Lcom/android/launcher4/ShortcutInfo;
    :pswitch_1
    const v10, 0x7f04001c

    .line 8411
    invoke-virtual {v6}, Lcom/android/launcher4/Workspace;->getCurrentPage()I

    move-result v5

    .line 8410
    invoke-virtual {v6, v5}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object/from16 v8, v26

    .line 8411
    check-cast v8, Lcom/android/launcher4/FolderInfo;

    .line 8412
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher4/Launcher;->mIconCache:Lcom/android/launcher4/IconCache;

    .line 8409
    move-object/from16 v0, p0

    invoke-static {v10, v0, v5, v8, v11}, Lcom/android/launcher4/FolderIcon;->fromXml(ILcom/android/launcher4/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher4/FolderInfo;Lcom/android/launcher4/IconCache;)Lcom/android/launcher4/FolderIcon;

    move-result-object v9

    .line 8413
    .local v9, "newFolder":Lcom/android/launcher4/FolderIcon;
    move-object/from16 v0, v26

    iget-wide v10, v0, Lcom/android/launcher4/ItemInfo;->container:J

    .line 8414
    move-object/from16 v0, v26

    iget-wide v12, v0, Lcom/android/launcher4/ItemInfo;->screenId:J

    move-object/from16 v0, v26

    iget v14, v0, Lcom/android/launcher4/ItemInfo;->cellX:I

    move-object/from16 v0, v26

    iget v15, v0, Lcom/android/launcher4/ItemInfo;->cellY:I

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object v8, v6

    .line 8413
    invoke-virtual/range {v8 .. v17}, Lcom/android/launcher4/Workspace;->addInScreenFromBind(Landroid/view/View;JJIIII)V

    goto/16 :goto_4

    .line 8446
    .end local v9    # "newFolder":Lcom/android/launcher4/FolderIcon;
    .end local v26    # "item":Lcom/android/launcher4/ItemInfo;
    .restart local v22    # "currentScreenId":J
    .restart local v27    # "newScreenIndex":I
    .restart local v30    # "startBounceAnimRunnable":Ljava/lang/Runnable;
    :cond_8
    sget-object v5, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 8447
    sget v8, Lcom/android/launcher4/Launcher;->NEW_APPS_ANIMATION_DELAY:I

    int-to-long v10, v8

    .line 8446
    move-object/from16 v0, v30

    invoke-virtual {v5, v0, v10, v11}, Lcom/android/launcher4/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 8380
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bindPackagesUpdated(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8704
    .local p1, "widgetsAndShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mBindPackagesUpdatedRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher4/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8705
    iput-object p1, p0, Lcom/android/launcher4/Launcher;->mWidgetsAndShortcuts:Ljava/util/ArrayList;

    .line 8714
    :cond_0
    :goto_0
    return-void

    .line 8710
    :cond_1
    sget-boolean v0, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-nez v0, :cond_0

    .line 8711
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    if-eqz v0, :cond_0

    .line 8712
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/AppsCustomizePagedView;->onPackagesUpdated(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public bindScreens(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8235
    .local p1, "orderedScreenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Launcher;->bindAddScreens(Ljava/util/ArrayList;)V

    .line 8239
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 8240
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8241
    const v1, 0x7f0a0012

    .line 8240
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 8241
    if-eqz v0, :cond_0

    .line 8242
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->addExtraEmptyScreen()Z

    .line 8253
    :cond_0
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8254
    const v1, 0x7f0a0010

    .line 8253
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 8254
    if-eqz v0, :cond_1

    .line 8255
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->hasMyCustomContent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8256
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->createUserPage()V

    .line 8257
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->initViews()V

    .line 8258
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->bindOnclickListener()V

    .line 8262
    :cond_1
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->hasCustomContent()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->hasCustomContentToLeft()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8263
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->createCustomContentPage()V

    .line 8265
    :cond_2
    return-void
.end method

.method public bindSearchablesChanged()V
    .locals 3

    .prologue
    .line 8602
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->updateGlobalSearchIcon()Z

    move-result v0

    .line 8603
    .local v0, "searchVisible":Z
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Launcher;->updateVoiceSearchIcon(Z)Z

    move-result v1

    .line 8604
    .local v1, "voiceVisible":Z
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    if-eqz v2, :cond_0

    .line 8605
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher4/SearchDropTargetBar;->onSearchPackagesChanged(ZZ)V

    .line 8608
    :cond_0
    return-void
.end method

.method public closeFolder()V
    .locals 2

    .prologue
    .line 7015
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher4/Workspace;->getOpenFolder()Lcom/android/launcher4/Folder;

    move-result-object v0

    .line 7016
    .local v0, "folder":Lcom/android/launcher4/Folder;
    if-eqz v0, :cond_1

    .line 7017
    invoke-virtual {v0}, Lcom/android/launcher4/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7018
    invoke-virtual {v0}, Lcom/android/launcher4/Folder;->dismissEditingName()V

    .line 7020
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Launcher;->closeFolder(Lcom/android/launcher4/Folder;)V

    .line 7023
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher4/Launcher;->dismissFolderCling(Landroid/view/View;)V

    .line 7025
    :cond_1
    return-void
.end method

.method closeFolder(Lcom/android/launcher4/Folder;)V
    .locals 4
    .param p1, "folder"    # Lcom/android/launcher4/Folder;

    .prologue
    .line 7028
    invoke-virtual {p1}, Lcom/android/launcher4/Folder;->getInfo()Lcom/android/launcher4/FolderInfo;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/launcher4/FolderInfo;->opened:Z

    .line 7030
    invoke-virtual {p1}, Lcom/android/launcher4/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 7031
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 7032
    sget-object v2, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    iget-object v3, p1, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher4/Workspace;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/FolderIcon;

    .line 7033
    .local v0, "fi":Lcom/android/launcher4/FolderIcon;
    invoke-direct {p0, v0}, Lcom/android/launcher4/Launcher;->shrinkAndFadeInFolderIcon(Lcom/android/launcher4/FolderIcon;)V

    .line 7035
    .end local v0    # "fi":Lcom/android/launcher4/FolderIcon;
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher4/Folder;->animateClosed()V

    .line 7040
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v2

    .line 7041
    const/16 v3, 0x20

    .line 7040
    invoke-virtual {v2, v3}, Lcom/android/launcher4/DragLayer;->sendAccessibilityEvent(I)V

    .line 7042
    return-void
.end method

.method public closeSystemDialogs()V
    .locals 1

    .prologue
    .line 5318
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 5320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/Launcher;->mWaitingForResult:Z

    .line 5321
    return-void
.end method

.method completeAddApplication(Landroid/content/Intent;JJII)V
    .locals 20
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I

    .prologue
    .line 4896
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 4897
    .local v6, "cellXY":[I
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher4/Launcher;->getCellLayout(JJ)Lcom/android/launcher4/CellLayout;

    move-result-object v9

    .line 4901
    .local v9, "layout":Lcom/android/launcher4/CellLayout;
    if-ltz p6, :cond_1

    if-ltz p7, :cond_1

    .line 4902
    const/4 v7, 0x0

    aput p6, v6, v7

    .line 4903
    const/4 v7, 0x1

    aput p7, v6, v7

    .line 4909
    :cond_0
    sget-object v7, Lcom/android/launcher4/Launcher;->mModel:Lcom/android/launcher4/LauncherModel;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v7, v10, v0, v1}, Lcom/android/launcher4/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher4/ShortcutInfo;

    move-result-object v8

    .line 4912
    .local v8, "info":Lcom/android/launcher4/ShortcutInfo;
    if-eqz v8, :cond_2

    .line 4913
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 4914
    const/high16 v10, 0x10200000

    .line 4913
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v7, v10}, Lcom/android/launcher4/ShortcutInfo;->setActivity(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 4916
    const-wide/16 v10, -0x1

    iput-wide v10, v8, Lcom/android/launcher4/ShortcutInfo;->container:J

    .line 4917
    sget-object v7, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 4918
    const/4 v10, 0x0

    aget v14, v6, v10

    const/4 v10, 0x1

    aget v15, v6, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->isWorkspaceLocked()Z

    move-result v16

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move/from16 v17, p6

    move/from16 v18, p7

    .line 4917
    invoke-virtual/range {v7 .. v18}, Lcom/android/launcher4/Workspace;->addApplicationShortcut(Lcom/android/launcher4/ShortcutInfo;Lcom/android/launcher4/CellLayout;JJIIZII)V

    .line 4924
    .end local v8    # "info":Lcom/android/launcher4/ShortcutInfo;
    :goto_0
    return-void

    .line 4904
    :cond_1
    const/4 v7, 0x1

    const/4 v10, 0x1

    invoke-virtual {v9, v6, v7, v10}, Lcom/android/launcher4/CellLayout;->findCellForSpan([III)Z

    move-result v7

    if-nez v7, :cond_0

    .line 4905
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher4/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher4/Launcher;->showOutOfSpaceMessage(Z)V

    goto :goto_0

    .line 4921
    .restart local v8    # "info":Lcom/android/launcher4/ShortcutInfo;
    :cond_2
    const-string v7, "Launcher"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Couldn\'t find ActivityInfo for selected application: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4922
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4921
    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher4/ShortcutInfo;)Landroid/view/View;
    .locals 3
    .param p1, "layoutResId"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "info"    # Lcom/android/launcher4/ShortcutInfo;

    .prologue
    .line 4879
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mInflater:Landroid/view/LayoutInflater;

    .line 4880
    const/4 v2, 0x0

    .line 4879
    invoke-virtual {v1, p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/BubbleTextView;

    .line 4881
    .local v0, "favorite":Lcom/android/launcher4/BubbleTextView;
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mIconCache:Lcom/android/launcher4/IconCache;

    invoke-virtual {v0, p3, v1}, Lcom/android/launcher4/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher4/ShortcutInfo;Lcom/android/launcher4/IconCache;)V

    .line 4882
    invoke-virtual {v0, p0}, Lcom/android/launcher4/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4883
    return-object v0
.end method

.method createShortcut(Lcom/android/launcher4/ShortcutInfo;)Landroid/view/View;
    .locals 3
    .param p1, "info"    # Lcom/android/launcher4/ShortcutInfo;

    .prologue
    .line 4860
    const v1, 0x7f040008

    .line 4861
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    sget-object v2, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher4/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4860
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/launcher4/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher4/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public disableVoiceButtonProxy(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 8050
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Launcher;->updateVoiceButtonProxyVisible(Z)V

    .line 8051
    return-void
.end method

.method public dismissFirstRunCling(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 9216
    const v0, 0x7f11006f

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/Cling;

    .line 9217
    .local v1, "cling":Lcom/android/launcher4/Cling;
    new-instance v2, Lcom/android/launcher4/Launcher$105;

    invoke-direct {v2, p0}, Lcom/android/launcher4/Launcher$105;-><init>(Lcom/android/launcher4/Launcher;)V

    .line 9222
    .local v2, "cb":Ljava/lang/Runnable;
    const-string v3, "cling_gel.first_run.dismissed"

    .line 9223
    const/16 v4, 0xc8

    const/4 v5, 0x0

    move-object v0, p0

    .line 9222
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher4/Launcher;->dismissCling(Lcom/android/launcher4/Cling;Ljava/lang/Runnable;Ljava/lang/String;IZ)V

    .line 9225
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/launcher4/SearchDropTargetBar;->hideSearchBar(Z)V

    .line 9226
    return-void
.end method

.method public dismissFolderCling(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 9246
    const v0, 0x7f110071

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/Cling;

    .line 9247
    .local v1, "cling":Lcom/android/launcher4/Cling;
    const/4 v2, 0x0

    const-string v3, "cling_gel.folder.dismissed"

    .line 9248
    const/16 v4, 0xc8

    const/4 v5, 0x1

    move-object v0, p0

    .line 9247
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher4/Launcher;->dismissCling(Lcom/android/launcher4/Cling;Ljava/lang/Runnable;Ljava/lang/String;IZ)V

    .line 9249
    return-void
.end method

.method public dismissWorkspaceCling(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 9229
    const v0, 0x7f110070

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/Cling;

    .line 9230
    .local v1, "cling":Lcom/android/launcher4/Cling;
    const/4 v2, 0x0

    .line 9231
    .local v2, "cb":Ljava/lang/Runnable;
    if-nez p1, :cond_0

    .line 9232
    new-instance v2, Lcom/android/launcher4/Launcher$106;

    .end local v2    # "cb":Ljava/lang/Runnable;
    invoke-direct {v2, p0}, Lcom/android/launcher4/Launcher$106;-><init>(Lcom/android/launcher4/Launcher;)V

    .line 9238
    .restart local v2    # "cb":Ljava/lang/Runnable;
    :cond_0
    const-string v3, "cling_gel.workspace.dismissed"

    .line 9239
    const/16 v4, 0xc8

    move-object v0, p0

    .line 9238
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher4/Launcher;->dismissCling(Lcom/android/launcher4/Cling;Ljava/lang/Runnable;Ljava/lang/String;IZ)V

    .line 9242
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    invoke-virtual {v0, v5}, Lcom/android/launcher4/SearchDropTargetBar;->showSearchBar(Z)V

    .line 9243
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 5820
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 5821
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 5838
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    :pswitch_0
    :sswitch_0
    return v0

    .line 5825
    :sswitch_1
    const-string v1, "launcher_dump_state"

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5826
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->dumpState()V

    goto :goto_1

    .line 5831
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 5832
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 5821
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch

    .line 5832
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 8103
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 8104
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    .line 8105
    .local v1, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 8107
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mState:Lcom/android/launcher4/Launcher$State;

    sget-object v3, Lcom/android/launcher4/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher4/Launcher$State;

    if-ne v2, v3, :cond_0

    .line 8108
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-virtual {v2}, Lcom/android/launcher4/AppsCustomizeTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v2

    .line 8109
    invoke-virtual {v2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 8108
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8113
    :goto_0
    return v0

    .line 8111
    :cond_0
    const v2, 0x7f0c0028

    invoke-virtual {p0, v2}, Lcom/android/launcher4/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 9273
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 9274
    sget-object v2, Lcom/android/launcher4/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    monitor-enter v2

    .line 9275
    :try_start_0
    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9276
    const-string v1, "Debug logs: "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/launcher4/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 9274
    monitor-exit v2

    .line 9281
    return-void

    .line 9278
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher4/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9274
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dumpLogsToLocalData()V
    .locals 0

    .prologue
    .line 9355
    return-void
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 9255
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BEGIN launcher3 dump state for launcher "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9256
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSavedState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9257
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mWorkspaceLoading="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/launcher4/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9258
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mRestoring="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/launcher4/Launcher;->mRestoring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9259
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mWaitingForResult="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/launcher4/Launcher;->mWaitingForResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9260
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSavedInstanceState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9261
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sFolders.size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher4/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9262
    sget-object v0, Lcom/android/launcher4/Launcher;->mModel:Lcom/android/launcher4/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherModel;->dumpState()V

    .line 9264
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    if-eqz v0, :cond_0

    .line 9265
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher4/AppsCustomizePagedView;->dumpState()V

    .line 9267
    :cond_0
    const-string v0, "Launcher"

    const-string v1, "END launcher3 dump state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9268
    return-void
.end method

.method enterSpringLoadedDragMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 7682
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->isAllAppsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7683
    sget-object v0, Lcom/android/launcher4/Workspace$State;->SPRING_LOADED:Lcom/android/launcher4/Workspace$State;

    const/4 v1, 0x0

    .line 7684
    const/4 v2, 0x0

    .line 7683
    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/launcher4/Launcher;->hideAppsCustomizeHelper(Lcom/android/launcher4/Workspace$State;ZZLjava/lang/Runnable;)V

    .line 7685
    sget-object v0, Lcom/android/launcher4/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher4/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->mState:Lcom/android/launcher4/Launcher$State;

    .line 7686
    invoke-virtual {p0, v3}, Lcom/android/launcher4/Launcher;->showHotseat(Z)V

    .line 7688
    :cond_0
    return-void
.end method

.method exitSpringLoadedDragMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 7714
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mState:Lcom/android/launcher4/Launcher$State;

    sget-object v3, Lcom/android/launcher4/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher4/Launcher$State;

    if-ne v2, v3, :cond_0

    .line 7715
    const/4 v0, 0x1

    .line 7716
    .local v0, "animated":Z
    const/4 v1, 0x1

    .line 7717
    .local v1, "springLoaded":Z
    invoke-direct {p0, v4, v4}, Lcom/android/launcher4/Launcher;->showAppsCustomizeHelper(ZZ)V

    .line 7718
    sget-object v2, Lcom/android/launcher4/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher4/Launcher$State;

    iput-object v2, p0, Lcom/android/launcher4/Launcher;->mState:Lcom/android/launcher4/Launcher$State;

    .line 7721
    .end local v0    # "animated":Z
    .end local v1    # "springLoaded":Z
    :cond_0
    return-void
.end method

.method exitSpringLoadedDragModeDelayed(ZZLjava/lang/Runnable;)V
    .locals 6
    .param p1, "successfulDrop"    # Z
    .param p2, "extendedDelay"    # Z
    .param p3, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 7692
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mState:Lcom/android/launcher4/Launcher$State;

    sget-object v1, Lcom/android/launcher4/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher4/Launcher$State;

    if-eq v0, v1, :cond_0

    .line 7711
    :goto_0
    return-void

    .line 7695
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher4/Launcher$89;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/launcher4/Launcher$89;-><init>(Lcom/android/launcher4/Launcher;ZLjava/lang/Runnable;)V

    .line 7709
    if-eqz p2, :cond_1

    const/16 v0, 0x258

    :goto_1
    int-to-long v4, v0

    .line 7695
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7710
    :cond_1
    const/16 v0, 0x12c

    goto :goto_1
.end method

.method public finishBindingItems(Z)V
    .locals 6
    .param p1, "upgradePath"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8526
    new-instance v1, Lcom/android/launcher4/Launcher$96;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher4/Launcher$96;-><init>(Lcom/android/launcher4/Launcher;Z)V

    .line 8531
    .local v1, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v1}, Lcom/android/launcher4/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8572
    :goto_0
    return-void

    .line 8534
    :cond_0
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    .line 8535
    sget-object v2, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher4/Workspace;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8536
    sget-object v2, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher4/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8537
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 8539
    :cond_1
    iput-object v4, p0, Lcom/android/launcher4/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 8542
    :cond_2
    sget-object v2, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher4/Workspace;->restoreInstanceStateForRemainingPages()V

    .line 8547
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/android/launcher4/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 8550
    sget-object v2, Lcom/android/launcher4/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 8559
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher4/Launcher;->mWorkspaceLoading:Z

    .line 8560
    if-eqz p1, :cond_3

    .line 8561
    sget-object v2, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v2, v5, v4}, Lcom/android/launcher4/Workspace;->getUniqueComponents(ZLjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 8562
    sget-object v2, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 8563
    invoke-virtual {v2, v5, v4}, Lcom/android/launcher4/Workspace;->getUniqueComponents(ZLjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 8562
    sput-object v2, Lcom/android/launcher4/Launcher;->mIntentsOnWorkspaceFromUpgradePath:Ljava/util/ArrayList;

    .line 8566
    :cond_3
    sget-object v2, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    new-instance v3, Lcom/android/launcher4/Launcher$97;

    invoke-direct {v3, p0}, Lcom/android/launcher4/Launcher$97;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher4/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 8548
    :cond_4
    sget-object v2, Lcom/android/launcher4/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/Launcher$PendingAddArguments;

    invoke-direct {p0, v2}, Lcom/android/launcher4/Launcher;->completeAdd(Lcom/android/launcher4/Launcher$PendingAddArguments;)Z

    .line 8547
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getAllAppsButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mAllAppsButton:Landroid/view/View;

    return-object v0
.end method

.method public getAppWidgetHost()Lcom/android/launcher4/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 5310
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mAppWidgetHost:Lcom/android/launcher4/LauncherAppWidgetHost;

    return-object v0
.end method

.method getCellLayout(JJ)Lcom/android/launcher4/CellLayout;
    .locals 5
    .param p1, "container"    # J
    .param p3, "screenId"    # J

    .prologue
    const/4 v0, 0x0

    .line 7198
    const-wide/16 v2, -0x65

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 7199
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 7206
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0, p3, p4}, Lcom/android/launcher4/Workspace;->getScreenWithId(J)Lcom/android/launcher4/CellLayout;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    .prologue
    .line 8206
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    if-eqz v0, :cond_0

    .line 8207
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->getCurrentPage()I

    move-result v0

    .line 8209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getDragController()Lcom/android/launcher4/DragController;
    .locals 1

    .prologue
    .line 5502
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mDragController:Lcom/android/launcher4/DragController;

    return-object v0
.end method

.method public getDragLayer()Lcom/android/launcher4/DragLayer;
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mDragLayer:Lcom/android/launcher4/DragLayer;

    return-object v0
.end method

.method protected getFirstRunClingSearchBarHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9111
    const-string v0, ""

    return-object v0
.end method

.method protected getFirstRunCustomContentHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9115
    const-string v0, ""

    return-object v0
.end method

.method protected getFirstRunFocusedHotseatAppBubbleDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9135
    const-string v0, ""

    return-object v0
.end method

.method protected getFirstRunFocusedHotseatAppBubbleTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9131
    const-string v0, ""

    return-object v0
.end method

.method protected getFirstRunFocusedHotseatAppComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 9123
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFirstRunFocusedHotseatAppDrawableId()I
    .locals 1

    .prologue
    .line 9119
    const/4 v0, -0x1

    return v0
.end method

.method protected getFirstRunFocusedHotseatAppRank()I
    .locals 1

    .prologue
    .line 9127
    const/4 v0, -0x1

    return v0
.end method

.method public getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 6348
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mHapticFeedbackTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 6349
    new-instance v0, Lcom/android/launcher4/Launcher$76;

    invoke-direct {v0, p0}, Lcom/android/launcher4/Launcher$76;-><init>(Lcom/android/launcher4/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->mHapticFeedbackTouchListener:Landroid/view/View$OnTouchListener;

    .line 6359
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mHapticFeedbackTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method getHotseat()Landroid/view/View;
    .locals 1

    .prologue
    .line 7174
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    return-object v0
.end method

.method public getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method getOverviewPanel()Landroid/view/View;
    .locals 1

    .prologue
    .line 7178
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mOverviewPanel:Landroid/view/View;

    return-object v0
.end method

.method public getQsbBar()Landroid/view/View;
    .locals 4

    .prologue
    .line 7916
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mQsbBar:Landroid/view/View;

    if-nez v0, :cond_0

    .line 7917
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04002d

    .line 7918
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    const/4 v3, 0x0

    .line 7917
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->mQsbBar:Landroid/view/View;

    .line 7919
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mQsbBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/SearchDropTargetBar;->addView(Landroid/view/View;)V

    .line 7921
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mQsbBar:Landroid/view/View;

    return-object v0
.end method

.method getSearchBar()Lcom/android/launcher4/SearchDropTargetBar;
    .locals 1

    .prologue
    .line 7190
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    return-object v0
.end method

.method protected getSharedPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 9204
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getStats()Lcom/android/launcher4/Stats;
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mStats:Lcom/android/launcher4/Stats;

    return-object v0
.end method

.method public getTopOffsetForCustomContent()I
    .locals 1

    .prologue
    .line 2668
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method protected getWallpaperPickerComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 5803
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5804
    const-class v2, Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 5803
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method getWorkspace()Lcom/android/launcher4/Workspace;
    .locals 1

    .prologue
    .line 7211
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    return-object v0
.end method

.method public getbyte(Ljava/lang/String;)[B
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1209
    const/16 v5, 0x20

    new-array v2, v5, [B

    .line 1211
    .local v2, "b_return":[B
    const/4 v1, 0x0

    .line 1212
    .local v1, "b":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 1221
    const-string v4, ""

    .line 1222
    .local v4, "str_a":Ljava/lang/String;
    const/4 v3, 0x0

    :goto_1
    sget-object v5, Lcom/android/launcher4/Launcher;->str_device:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v3, v5, :cond_1

    .line 1227
    return-object v2

    .line 1213
    .end local v4    # "str_a":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1217
    .local v0, "a":C
    move v1, v0

    .line 1218
    int-to-byte v5, v1

    aput-byte v5, v2, v3

    .line 1212
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1223
    .end local v0    # "a":C
    .restart local v4    # "str_a":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1222
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public handleNaviState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4170
    sget v0, Lcom/syu/car/CarStates;->mAccState:I

    if-nez v0, :cond_1

    .line 4198
    :cond_0
    :goto_0
    return-void

    .line 4174
    :cond_1
    sget v0, Lcom/android/launcher4/MyAutoMapReceiver;->mCurState:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 4195
    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->clearGaoDeData()V

    goto :goto_0

    .line 4178
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mInitNaviInfoView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 4180
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mInitNaviInfoView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4182
    :cond_2
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mNaviRunView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4184
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mNaviRunView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4188
    :pswitch_3
    sput v2, Lcom/android/launcher4/MyAutoMapReceiver;->mCurSpeed:I

    .line 4191
    :pswitch_4
    sput v2, Lcom/android/launcher4/MyAutoMapReceiver;->mCurSpeed:I

    goto :goto_0

    .line 4174
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleView()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/high16 v7, 0x447a0000    # 1000.0f

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 4271
    sget v4, Lcom/syu/car/CarStates;->mAccState:I

    if-nez v4, :cond_1

    .line 4428
    :cond_0
    :goto_0
    return-void

    .line 4275
    :cond_1
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mInitNaviInfoView:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mNaviRunView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 4276
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mInitNaviInfoView:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 4277
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mNaviRunView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 4280
    :cond_2
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    .line 4281
    sget v4, Lcom/android/launcher4/MyAutoMapReceiver;->mTurnIcon:I

    packed-switch v4, :pswitch_data_0

    .line 4365
    :cond_3
    :goto_1
    :pswitch_0
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mCurDis_RemainView:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    .line 4367
    sget v4, Lcom/android/launcher4/MyAutoMapReceiver;->mCurDis_Remain:I

    const/16 v5, 0x5dc

    if-le v4, v5, :cond_c

    .line 4368
    sget v4, Lcom/android/launcher4/MyAutoMapReceiver;->mCurDis_Remain:I

    int-to-float v4, v4

    div-float v0, v4, v7

    .line 4369
    .local v0, "dis":F
    const-string v4, "%1$.1f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4370
    .local v2, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mCurDis_RemainView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "KM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4371
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mMapbgUnitView:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    .line 4372
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mMapbgUnitView:Landroid/widget/ImageView;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v5

    iget v5, v5, Lshare/ResValue;->map_distance_bgunit2:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4380
    .end local v0    # "dis":F
    .end local v2    # "str":Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mMapbgUnitView:Landroid/widget/ImageView;

    if-eqz v4, :cond_5

    .line 4381
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mMapbgUnitView:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4385
    :cond_5
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mCurDis_AllView:Landroid/widget/TextView;

    if-eqz v4, :cond_6

    .line 4386
    sget v4, Lcom/android/launcher4/MyAutoMapReceiver;->mCurDis_All:I

    int-to-float v4, v4

    div-float v0, v4, v7

    .line 4387
    .restart local v0    # "dis":F
    const-string v4, "%1$.1f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4388
    .restart local v2    # "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mCurDis_AllView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "km"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4391
    .end local v0    # "dis":F
    .end local v2    # "str":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mCamera_DisView:Landroid/widget/TextView;

    if-eqz v4, :cond_7

    .line 4392
    sget v4, Lcom/android/launcher4/MyAutoMapReceiver;->mCameraDis:I

    if-ne v4, v8, :cond_d

    .line 4393
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mCamera_DisView:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4398
    :cond_7
    :goto_3
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mCamera_DisImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_8

    .line 4399
    sget v4, Lcom/android/launcher4/MyAutoMapReceiver;->mCameraDis:I

    if-ne v4, v8, :cond_e

    .line 4400
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mCamera_DisImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4405
    :cond_8
    :goto_4
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mCurRemainTimeView:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    .line 4407
    sget v1, Lcom/android/launcher4/MyAutoMapReceiver;->mREMAINTime:I

    .line 4408
    .local v1, "mREMAINTime":I
    invoke-static {v1}, Lcom/android/launcher4/Launcher;->formatDuration(I)Ljava/lang/String;

    move-result-object v3

    .line 4410
    .local v3, "time":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mCurRemainTimeView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4411
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 4412
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v7

    const-string v8, "tv_road"

    const-string v9, "string"

    invoke-virtual {v7, v8, v9}, Lshare/ResValue;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 4411
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4410
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4415
    .end local v1    # "mREMAINTime":I
    .end local v3    # "time":Ljava/lang/String;
    :cond_9
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mCurRoadNameView:Landroid/widget/TextView;

    if-eqz v4, :cond_a

    .line 4416
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mCurRoadNameView:Landroid/widget/TextView;

    sget-object v5, Lcom/android/launcher4/MyAutoMapReceiver;->mCurRoadName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4417
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mCurRoadNameView:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4420
    :cond_a
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mNextRoadNameView:Landroid/widget/TextView;

    if-eqz v4, :cond_b

    .line 4421
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mNextRoadNameView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u8fdb\u5165  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/android/launcher4/MyAutoMapReceiver;->mNextRoadName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4422
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mNextRoadNameView:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4425
    :cond_b
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mNaviMycar:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 4426
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mNaviMycar:Landroid/widget/ImageView;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 4283
    :pswitch_1
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    .line 4284
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v5

    iget v5, v5, Lshare/ResValue;->default_icon:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4287
    :pswitch_2
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    .line 4288
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v5

    iget v5, v5, Lshare/ResValue;->turn_left:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4291
    :pswitch_3
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    .line 4292
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v5

    iget v5, v5, Lshare/ResValue;->turn_right:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4295
    :pswitch_4
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    .line 4296
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v5

    iget v5, v5, Lshare/ResValue;->turn_left_up:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4299
    :pswitch_5
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    .line 4300
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v5

    iget v5, v5, Lshare/ResValue;->turn_right_up:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4303
    :pswitch_6
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    .line 4304
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v5

    iget v5, v5, Lshare/ResValue;->turn_leftdown:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4307
    :pswitch_7
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    .line 4308
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v5

    iget v5, v5, Lshare/ResValue;->turn_rightdown:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4311
    :pswitch_8
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    .line 4312
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v5

    iget v5, v5, Lshare/ResValue;->turn_leftback:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4315
    :pswitch_9
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    .line 4316
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v5

    iget v5, v5, Lshare/ResValue;->straight:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4319
    :pswitch_a
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    .line 4320
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v5

    iget v5, v5, Lshare/ResValue;->turn_mid_dest:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4323
    :pswitch_b
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    .line 4324
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v5

    iget v5, v5, Lshare/ResValue;->trun_island_right:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4327
    :pswitch_c
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    .line 4328
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v5

    iget v5, v5, Lshare/ResValue;->trun_island_right_line:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4331
    :pswitch_d
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    .line 4332
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v5

    iget v5, v5, Lshare/ResValue;->turn_park:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4335
    :pswitch_e
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    .line 4336
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v5

    iget v5, v5, Lshare/ResValue;->turn_charge:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4339
    :pswitch_f
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    .line 4340
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v5

    iget v5, v5, Lshare/ResValue;->turn_dest:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4343
    :pswitch_10
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    .line 4344
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v5

    iget v5, v5, Lshare/ResValue;->tunnel:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4347
    :pswitch_11
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    .line 4348
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v5

    iget v5, v5, Lshare/ResValue;->trun_island_left:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4351
    :pswitch_12
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    .line 4352
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v5

    iget v5, v5, Lshare/ResValue;->trun_island_left_line:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4355
    :pswitch_13
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    .line 4356
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v5

    iget v5, v5, Lshare/ResValue;->turn_rightback:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4359
    :pswitch_14
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mTurnIconView:Landroid/widget/ImageView;

    .line 4360
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v5

    iget v5, v5, Lshare/ResValue;->truen_slow_down:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4375
    :cond_c
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mCurDis_RemainView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    sget v6, Lcom/android/launcher4/MyAutoMapReceiver;->mCurDis_Remain:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "M"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4376
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mMapbgUnitView:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    .line 4377
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mMapbgUnitView:Landroid/widget/ImageView;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v5

    iget v5, v5, Lshare/ResValue;->map_distance_bgunit:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 4395
    :cond_d
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mCamera_DisView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    sget v6, Lcom/android/launcher4/MyAutoMapReceiver;->mCameraDis:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "m"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 4402
    :cond_e
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mCamera_DisImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 4281
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method protected hasCustomContentToLeft()Z
    .locals 1

    .prologue
    .line 958
    const/4 v0, 0x0

    return v0
.end method

.method hideHotseat(Z)V
    .locals 5
    .param p1, "animated"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 7765
    sget-object v1, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 7766
    const v2, 0x7f0a0016

    .line 7765
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 7766
    if-nez v1, :cond_0

    .line 7786
    :goto_0
    return-void

    .line 7770
    :cond_0
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherAppState;->isScreenLarge()Z

    move-result v1

    if-nez v1, :cond_3

    .line 7771
    if-eqz p1, :cond_4

    .line 7772
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_2

    .line 7773
    const/4 v0, 0x0

    .line 7774
    .local v0, "duration":I
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    if-eqz v1, :cond_1

    .line 7775
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    .line 7776
    invoke-virtual {v1}, Lcom/android/launcher4/SearchDropTargetBar;->getTransitionOutDuration()I

    move-result v0

    .line 7778
    :cond_1
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 7780
    .end local v0    # "duration":I
    :cond_2
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 7785
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 7782
    :cond_4
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method protected invalidateHasCustomContentToLeft()V
    .locals 1

    .prologue
    .line 975
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->getScreenOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 980
    :cond_1
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->hasCustomContent()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->hasCustomContentToLeft()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 983
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->createCustomContentPage()V

    .line 984
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->addCustomContentToLeft()V

    goto :goto_0

    .line 985
    :cond_2
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->hasCustomContentToLeft()Z

    move-result v0

    if-nez v0, :cond_0

    .line 986
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->removeCustomContentPage()V

    goto :goto_0
.end method

.method public isAllAppsButtonRank(I)Z
    .locals 2
    .param p1, "rank"    # I

    .prologue
    const/4 v1, 0x0

    .line 8575
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 8578
    :cond_0
    return v1
.end method

.method public isAllAppsVisible()Z
    .locals 2

    .prologue
    .line 7215
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mState:Lcom/android/launcher4/Launcher$State;

    sget-object v1, Lcom/android/launcher4/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher4/Launcher$State;

    if-eq v0, v1, :cond_0

    .line 7216
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mOnResumeState:Lcom/android/launcher4/Launcher$State;

    sget-object v1, Lcom/android/launcher4/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher4/Launcher$State;

    if-eq v0, v1, :cond_0

    .line 7215
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isDraggingEnabled()Z
    .locals 1

    .prologue
    .line 1150
    sget-object v0, Lcom/android/launcher4/Launcher;->mModel:Lcom/android/launcher4/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherModel;->isLoadingWorkspace()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFolderClingVisible()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 9208
    const v2, 0x7f110071

    invoke-virtual {p0, v2}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/Cling;

    .line 9209
    .local v0, "cling":Lcom/android/launcher4/Cling;
    if-eqz v0, :cond_0

    .line 9210
    invoke-virtual {v0}, Lcom/android/launcher4/Cling;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 9212
    :cond_0
    return v1
.end method

.method isHotseatLayout(Landroid/view/View;)Z
    .locals 1
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    .line 7170
    const/4 v0, 0x0

    return v0
.end method

.method public isRotationEnabled()Z
    .locals 3

    .prologue
    .line 8750
    sget-boolean v1, Lcom/android/launcher4/Launcher;->sForceEnableRotation:Z

    if-nez v1, :cond_0

    .line 8751
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8750
    const/4 v0, 0x0

    .line 8752
    .local v0, "enableRotation":Z
    :goto_0
    return v0

    .line 8750
    .end local v0    # "enableRotation":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .prologue
    .line 5606
    iget-boolean v0, p0, Lcom/android/launcher4/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher4/Launcher;->mWaitingForResult:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method lockAllApps()V
    .locals 0

    .prologue
    .line 7725
    return-void
.end method

.method public lockScreenOrientation()V
    .locals 1

    .prologue
    .line 8756
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->isRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8757
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8758
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 8757
    invoke-direct {p0, v0}, Lcom/android/launcher4/Launcher;->mapConfigurationOriActivityInfoOri(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Launcher;->setRequestedOrientation(I)V

    .line 8760
    :cond_0
    return-void
.end method

.method protected moveToCustomContentScreen(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 5642
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->closeFolder()V

    .line 5643
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/Workspace;->moveToCustomContentScreen(Z)V

    .line 5644
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 1429
    iput-boolean v5, p0, Lcom/android/launcher4/Launcher;->mWaitingForResult:Z

    .line 1431
    const/16 v7, 0xb

    if-ne p1, v7, :cond_3

    .line 1432
    if-eqz p3, :cond_1

    .line 1433
    const-string v4, "appWidgetId"

    .line 1432
    invoke-virtual {p3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1434
    .local v0, "appWidgetId":I
    :goto_0
    if-nez p2, :cond_2

    .line 1435
    invoke-direct {p0, v5, v0}, Lcom/android/launcher4/Launcher;->completeTwoStageWidgetDrop(II)V

    .line 1498
    .end local v0    # "appWidgetId":I
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v6

    .line 1433
    goto :goto_0

    .line 1436
    .restart local v0    # "appWidgetId":I
    :cond_2
    if-ne p2, v6, :cond_0

    .line 1437
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    .line 1438
    iget-object v5, p0, Lcom/android/launcher4/Launcher;->mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1437
    invoke-virtual {p0, v0, v4, v10, v5}, Lcom/android/launcher4/Launcher;->addAppWidgetImpl(ILcom/android/launcher4/ItemInfo;Landroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_1

    .line 1441
    .end local v0    # "appWidgetId":I
    :cond_3
    const/16 v7, 0xa

    if-ne p1, v7, :cond_4

    .line 1442
    if-ne p2, v6, :cond_0

    sget-object v6, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher4/Workspace;->isInOverviewMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1443
    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->showHotseat(Z)V

    .line 1444
    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->updateWallpaperVisibility(Z)V

    .line 1445
    sget-object v4, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v4, v5}, Lcom/android/launcher4/Workspace;->exitOverviewMode(Z)V

    goto :goto_1

    .line 1450
    :cond_4
    const/4 v2, 0x0

    .line 1451
    .local v2, "delayExitSpringLoadedMode":Z
    const/16 v7, 0x9

    if-eq p1, v7, :cond_5

    const/4 v7, 0x5

    if-eq p1, v7, :cond_5

    move v3, v5

    .line 1454
    .local v3, "isWidgetDrop":Z
    :goto_2
    if-eqz v3, :cond_8

    .line 1455
    if-eqz p3, :cond_6

    .line 1456
    const-string v4, "appWidgetId"

    .line 1455
    invoke-virtual {p3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1457
    .restart local v0    # "appWidgetId":I
    :goto_3
    if-gez v0, :cond_7

    .line 1458
    const-string v4, "Launcher"

    .line 1459
    const-string v6, "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the \\widget configuration activity."

    .line 1458
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    invoke-direct {p0, v5, v0}, Lcom/android/launcher4/Launcher;->completeTwoStageWidgetDrop(II)V

    .line 1462
    sget-object v4, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher4/Workspace;->stripEmptyScreens()V

    goto :goto_1

    .end local v0    # "appWidgetId":I
    .end local v3    # "isWidgetDrop":Z
    :cond_5
    move v3, v4

    .line 1451
    goto :goto_2

    .restart local v3    # "isWidgetDrop":Z
    :cond_6
    move v0, v6

    .line 1456
    goto :goto_3

    .line 1464
    .restart local v0    # "appWidgetId":I
    :cond_7
    invoke-direct {p0, p2, v0}, Lcom/android/launcher4/Launcher;->completeTwoStageWidgetDrop(II)V

    goto :goto_1

    .line 1476
    .end local v0    # "appWidgetId":I
    :cond_8
    if-ne p2, v6, :cond_b

    .line 1477
    iget-object v6, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget-wide v6, v6, Lcom/android/launcher4/ItemInfo;->container:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_b

    .line 1478
    new-instance v1, Lcom/android/launcher4/Launcher$PendingAddArguments;

    invoke-direct {v1, v10}, Lcom/android/launcher4/Launcher$PendingAddArguments;-><init>(Lcom/android/launcher4/Launcher$PendingAddArguments;)V

    .line 1479
    .local v1, "args":Lcom/android/launcher4/Launcher$PendingAddArguments;
    iput p1, v1, Lcom/android/launcher4/Launcher$PendingAddArguments;->requestCode:I

    .line 1480
    iput-object p3, v1, Lcom/android/launcher4/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    .line 1481
    iget-object v6, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget-wide v6, v6, Lcom/android/launcher4/ItemInfo;->container:J

    iput-wide v6, v1, Lcom/android/launcher4/Launcher$PendingAddArguments;->container:J

    .line 1482
    iget-object v6, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget-wide v6, v6, Lcom/android/launcher4/ItemInfo;->screenId:J

    iput-wide v6, v1, Lcom/android/launcher4/Launcher$PendingAddArguments;->screenId:J

    .line 1483
    iget-object v6, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget v6, v6, Lcom/android/launcher4/ItemInfo;->cellX:I

    iput v6, v1, Lcom/android/launcher4/Launcher$PendingAddArguments;->cellX:I

    .line 1484
    iget-object v6, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget v6, v6, Lcom/android/launcher4/ItemInfo;->cellY:I

    iput v6, v1, Lcom/android/launcher4/Launcher$PendingAddArguments;->cellY:I

    .line 1485
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->isWorkspaceLocked()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1486
    sget-object v6, Lcom/android/launcher4/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1493
    .end local v1    # "args":Lcom/android/launcher4/Launcher$PendingAddArguments;
    :cond_9
    :goto_4
    iget-object v6, p0, Lcom/android/launcher4/Launcher;->mDragLayer:Lcom/android/launcher4/DragLayer;

    invoke-virtual {v6}, Lcom/android/launcher4/DragLayer;->clearAnimatedView()V

    .line 1496
    if-eqz p2, :cond_c

    :goto_5
    invoke-virtual {p0, v4, v2, v10}, Lcom/android/launcher4/Launcher;->exitSpringLoadedDragModeDelayed(ZZLjava/lang/Runnable;)V

    goto/16 :goto_1

    .line 1488
    .restart local v1    # "args":Lcom/android/launcher4/Launcher$PendingAddArguments;
    :cond_a
    invoke-direct {p0, v1}, Lcom/android/launcher4/Launcher;->completeAdd(Lcom/android/launcher4/Launcher$PendingAddArguments;)Z

    move-result v2

    .line 1490
    goto :goto_4

    .end local v1    # "args":Lcom/android/launcher4/Launcher$PendingAddArguments;
    :cond_b
    if-nez p2, :cond_9

    .line 1491
    sget-object v6, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher4/Workspace;->stripEmptyScreens()V

    goto :goto_4

    :cond_c
    move v4, v5

    .line 1496
    goto :goto_5
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5146
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 5149
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5150
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5151
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5152
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher4/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5153
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 5154
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 5153
    invoke-static {v1}, Lcom/android/launcher4/FirstFrameAnimatorHelper;->initializeDrawListener(Landroid/view/View;)V

    .line 5155
    iput-boolean v2, p0, Lcom/android/launcher4/Launcher;->mAttached:Z

    .line 5156
    iput-boolean v2, p0, Lcom/android/launcher4/Launcher;->mVisible:Z

    .line 5157
    return-void
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5867
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->isAllAppsVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5868
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v2}, Lcom/android/launcher4/AppsCustomizePagedView;->getContentType()Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    move-result-object v2

    sget-object v3, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    if-eq v2, v3, :cond_0

    .line 5869
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v2}, Lcom/android/launcher4/AppsCustomizePagedView;->getContentType()Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    move-result-object v2

    sget-object v3, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    if-ne v2, v3, :cond_4

    .line 5870
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->showWorkspace(Z)V

    .line 5895
    :goto_0
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->clickapp_cling:I

    if-lez v2, :cond_2

    .line 5896
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->clickapp_cling:I

    invoke-virtual {p0, v2}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/Cling;

    .line 5897
    .local v0, "cling":Lcom/android/launcher4/Cling;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/launcher4/Cling;->setVisibility(I)V

    .line 5898
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->stopVoice()V

    .line 5899
    const-string v2, "onBackPressed"

    invoke-static {v2}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 5900
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mWaitingForResume:Lcom/android/launcher4/BubbleTextView;

    if-eqz v2, :cond_1

    .line 5902
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mWaitingForResume:Lcom/android/launcher4/BubbleTextView;

    invoke-virtual {v2, v5}, Lcom/android/launcher4/BubbleTextView;->setStayPressed(Z)V

    .line 5904
    :cond_1
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    if-eqz v2, :cond_2

    .line 5906
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v2}, Lcom/android/launcher4/AppsCustomizePagedView;->resetDrawableState()V

    .line 5909
    .end local v0    # "cling":Lcom/android/launcher4/Cling;
    :cond_2
    const-string v2, "hy"

    const-string v3, "onBackPressed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5910
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->firstLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_3

    .line 5912
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->firstLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5915
    :cond_3
    return-void

    .line 5872
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->setButtonVisible(Z)V

    .line 5873
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mAllAppsButton:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 5874
    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->showOverviewMode(Z)V

    goto :goto_0

    .line 5876
    :cond_5
    sget-object v2, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher4/Workspace;->isInOverviewMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5877
    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->showHotseat(Z)V

    .line 5878
    sget-object v2, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v2, v4}, Lcom/android/launcher4/Workspace;->exitOverviewMode(Z)V

    .line 5879
    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->updateWallpaperVisibility(Z)V

    goto :goto_0

    .line 5880
    :cond_6
    sget-object v2, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher4/Workspace;->getOpenFolder()Lcom/android/launcher4/Folder;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 5881
    sget-object v2, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher4/Workspace;->getOpenFolder()Lcom/android/launcher4/Folder;

    move-result-object v1

    .line 5882
    .local v1, "openFolder":Lcom/android/launcher4/Folder;
    invoke-virtual {v1}, Lcom/android/launcher4/Folder;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5883
    invoke-virtual {v1}, Lcom/android/launcher4/Folder;->dismissEditingName()V

    goto :goto_0

    .line 5885
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->closeFolder()V

    goto :goto_0

    .line 5888
    .end local v1    # "openFolder":Lcom/android/launcher4/Folder;
    :cond_8
    sget-object v2, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher4/Workspace;->exitWidgetResizeMode()V

    .line 5892
    sget-object v2, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher4/Workspace;->showOutlinesTemporarily()V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 5933
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-nez v8, :cond_1

    .line 6267
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 5937
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    sget-object v8, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher4/Workspace;->isFinishedSwitchingState()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 5941
    instance-of v8, p1, Lcom/android/launcher4/Workspace;

    if-eqz v8, :cond_2

    .line 5942
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/launcher4/Launcher;->showHotseat(Z)V

    .line 5943
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/launcher4/Launcher;->updateWallpaperVisibility(Z)V

    .line 5944
    sget-object v8, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher4/Workspace;->isInOverviewMode()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 5945
    sget-object v8, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/launcher4/Workspace;->exitOverviewMode(Z)V

    goto :goto_0

    .line 5949
    :cond_2
    const-string v8, "hy"

    const-string v9, "WorkspaceonClick"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5950
    instance-of v8, p1, Lcom/android/launcher4/CellLayout;

    if-eqz v8, :cond_4

    .line 5951
    sget-object v8, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher4/Workspace;->isInOverviewMode()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 5952
    sget-object v8, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    sget-object v9, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v9, p1}, Lcom/android/launcher4/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher4/Workspace;->exitOverviewMode(IZ)V

    .line 5954
    :cond_3
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/launcher4/Launcher;->showHotseat(Z)V

    .line 5955
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/launcher4/Launcher;->updateWallpaperVisibility(Z)V

    .line 5958
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 5959
    .local v7, "tag":Ljava/lang/Object;
    instance-of v8, v7, Lcom/android/launcher4/ShortcutInfo;

    if-eqz v8, :cond_8

    move-object v4, v7

    .line 5962
    check-cast v4, Lcom/android/launcher4/ShortcutInfo;

    .line 5963
    .local v4, "shortcut":Lcom/android/launcher4/ShortcutInfo;
    iget-object v1, v4, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 5966
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 5967
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 5968
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 5970
    .local v5, "shortcutClass":Ljava/lang/String;
    const-class v8, Lcom/android/launcher4/WidgetAdder;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 5971
    const/4 v8, 0x1

    .line 5972
    sget-object v9, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    const/4 v10, 0x1

    .line 5971
    invoke-virtual {p0, v8, v9, v10}, Lcom/android/launcher4/Launcher;->showAllApps(ZLcom/android/launcher4/AppsCustomizePagedView$ContentType;Z)V

    goto :goto_0

    .line 5974
    :cond_5
    const-class v8, Lcom/android/launcher4/MemoryDumpActivity;

    .line 5975
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 5974
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 5975
    if-eqz v8, :cond_6

    .line 5976
    invoke-static {p0}, Lcom/android/launcher4/MemoryDumpActivity;->startDump(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 5978
    :cond_6
    const-class v8, Lcom/android/launcher4/ToggleWeightWatcher;

    .line 5979
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 5978
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 5979
    if-eqz v8, :cond_7

    .line 5980
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->toggleShowWeightWatcher()V

    goto/16 :goto_0

    .line 5986
    .end local v5    # "shortcutClass":Ljava/lang/String;
    :cond_7
    const/4 v8, 0x2

    new-array v3, v8, [I

    .line 5987
    .local v3, "pos":[I
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5988
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x1

    aget v10, v3, v10

    const/4 v11, 0x0

    aget v11, v3, v11

    .line 5989
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    const/4 v12, 0x1

    aget v12, v3, v12

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5988
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 5991
    invoke-virtual {p0, p1, v1, v7}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v6

    .line 5993
    .local v6, "success":Z
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->mStats:Lcom/android/launcher4/Stats;

    invoke-virtual {v8, v1, v4}, Lcom/android/launcher4/Stats;->recordLaunch(Landroid/content/Intent;Lcom/android/launcher4/ShortcutInfo;)V

    .line 5995
    if-eqz v6, :cond_0

    instance-of v8, p1, Lcom/android/launcher4/BubbleTextView;

    if-eqz v8, :cond_0

    .line 5996
    check-cast p1, Lcom/android/launcher4/BubbleTextView;

    .end local p1    # "v":Landroid/view/View;
    iput-object p1, p0, Lcom/android/launcher4/Launcher;->mWaitingForResume:Lcom/android/launcher4/BubbleTextView;

    .line 5997
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->mWaitingForResume:Lcom/android/launcher4/BubbleTextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/launcher4/BubbleTextView;->setStayPressed(Z)V

    goto/16 :goto_0

    .line 5999
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "pos":[I
    .end local v4    # "shortcut":Lcom/android/launcher4/ShortcutInfo;
    .end local v6    # "success":Z
    .restart local p1    # "v":Landroid/view/View;
    :cond_8
    instance-of v8, v7, Lcom/android/launcher4/FolderInfo;

    if-eqz v8, :cond_9

    .line 6000
    instance-of v8, p1, Lcom/android/launcher4/FolderIcon;

    if-eqz v8, :cond_0

    move-object v0, p1

    .line 6001
    check-cast v0, Lcom/android/launcher4/FolderIcon;

    .line 6002
    .local v0, "fi":Lcom/android/launcher4/FolderIcon;
    invoke-direct {p0, v0}, Lcom/android/launcher4/Launcher;->handleFolderClick(Lcom/android/launcher4/FolderIcon;)V

    goto/16 :goto_0

    .line 6004
    .end local v0    # "fi":Lcom/android/launcher4/FolderIcon;
    :cond_9
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->mAllAppsButton:Landroid/view/View;

    if-eq p1, v8, :cond_a

    .line 6005
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Allapps"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eq p1, v8, :cond_a

    .line 6006
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "ALLAPP"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_c

    .line 6007
    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->isAllAppsVisible()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 6008
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/launcher4/Launcher;->showWorkspace(Z)V

    goto/16 :goto_0

    .line 6010
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Launcher;->onClickAllAppsButton(Landroid/view/View;)V

    goto/16 :goto_0

    .line 6012
    :cond_c
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "Navi"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_e

    .line 6014
    sget-boolean v8, Lshare/Config;->EXISTAMPAUTO:Z

    if-eqz v8, :cond_d

    .line 6015
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->pipViews:Landroid/view/View;

    invoke-static {v8}, Lcom/syu/util/WindowUtil;->removePip(Landroid/view/View;)V

    .line 6016
    const-string v8, "persist.sys.navi.packagename"

    .line 6017
    const-string v9, "com.autonavi.amapauto"

    .line 6016
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6026
    const-string v8, "com.autonavi.amapauto"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 6027
    const-string v9, "music"

    .line 6025
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6030
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "navi = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "sys.navi.packagename"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 6032
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/syu/car/CarStates;->getCar(Landroid/content/Context;)Lcom/syu/car/CarStates;

    move-result-object v8

    iget-object v8, v8, Lcom/syu/car/CarStates;->mTools:Lcom/syu/remote/RemoteTools;

    .line 6033
    const/4 v9, 0x0

    .line 6034
    const/16 v10, 0x18

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 6032
    invoke-virtual {v8, v9, v10, v11}, Lcom/syu/remote/RemoteTools;->sendInt(II[I)V

    goto/16 :goto_0

    .line 6036
    :cond_e
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "Voice"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_f

    .line 6038
    const-string v8, "com.syu.voice"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "bt"

    .line 6037
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6040
    :cond_f
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "Bluetooth"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_10

    .line 6041
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->pipViews:Landroid/view/View;

    invoke-static {v8}, Lcom/syu/util/WindowUtil;->removePip(Landroid/view/View;)V

    .line 6045
    const-string v8, "com.syu.bt"

    const-string v9, "com.syu.bt.BtAct"

    invoke-direct {p0, v8, v9}, Lcom/android/launcher4/Launcher;->getIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "bt"

    .line 6044
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6047
    :cond_10
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "Radio"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_12

    .line 6048
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->pipViews:Landroid/view/View;

    invoke-static {v8}, Lcom/syu/util/WindowUtil;->removePip(Landroid/view/View;)V

    .line 6050
    sget v8, Lcom/syu/car/CarStates;->mExistCarRadio:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_11

    .line 6052
    const-string v8, "com.syu.carradio"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 6053
    const-string v9, "bt"

    .line 6051
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6058
    :cond_11
    const-string v8, "com.syu.radio"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 6059
    const-string v9, "bt"

    .line 6057
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6062
    :cond_12
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Radio"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_14

    .line 6063
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->pipViews:Landroid/view/View;

    invoke-static {v8}, Lcom/syu/util/WindowUtil;->removePip(Landroid/view/View;)V

    .line 6064
    sget v8, Lcom/syu/car/CarStates;->mExistCarRadio:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_13

    .line 6066
    const-string v8, "com.syu.carradio"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 6067
    const-string v9, "bt"

    .line 6065
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6070
    :cond_13
    const-string v8, "com.syu.radio"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 6071
    const-string v9, "music"

    .line 6069
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6073
    :cond_14
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Music"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eq p1, v8, :cond_15

    .line 6074
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Music_Two"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_16

    .line 6075
    :cond_15
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->pipViews:Landroid/view/View;

    invoke-static {v8}, Lcom/syu/util/WindowUtil;->removePip(Landroid/view/View;)V

    .line 6077
    const-string v8, "com.syu.music"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "music"

    .line 6076
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6078
    :cond_16
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_MusicIV"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_17

    .line 6080
    const-string v8, "com.syu.music"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "music"

    .line 6079
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6081
    :cond_17
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Video"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_18

    .line 6083
    const-string v8, "com.syu.video"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "music"

    .line 6082
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6084
    :cond_18
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Gallery"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_19

    .line 6086
    const-string v8, "com.syu.gallery"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 6087
    const-string v9, "galleryAction"

    .line 6085
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6088
    :cond_19
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Miudrive"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_1a

    .line 6090
    const-string v8, "com.didi365.miudrive.navi"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 6091
    const-string v9, "miudriveAction"

    .line 6089
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6092
    :cond_1a
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Bt"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eq p1, v8, :cond_1b

    iget-object v8, p0, Lcom/android/launcher4/Launcher;->mBtavView:Landroid/view/View;

    if-ne p1, v8, :cond_1c

    .line 6094
    :cond_1b
    const-string v8, "com.syu.bt"

    const-string v9, "com.syu.bt.BtAct"

    invoke-direct {p0, v8, v9}, Lcom/android/launcher4/Launcher;->getIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "bt"

    .line 6093
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6095
    :cond_1c
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Navi"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_1e

    .line 6097
    sget-boolean v8, Lshare/Config;->EXISTAMPAUTO:Z

    if-eqz v8, :cond_1d

    .line 6098
    const-string v8, "persist.sys.navi.packagename"

    .line 6099
    const-string v9, "com.autonavi.amapauto"

    .line 6098
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6107
    const-string v8, "com.autonavi.amapauto"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 6108
    const-string v9, "music"

    .line 6106
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6111
    :cond_1d
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/syu/car/CarStates;->getCar(Landroid/content/Context;)Lcom/syu/car/CarStates;

    move-result-object v8

    iget-object v8, v8, Lcom/syu/car/CarStates;->mTools:Lcom/syu/remote/RemoteTools;

    .line 6112
    const/4 v9, 0x0

    .line 6113
    const/16 v10, 0x18

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 6111
    invoke-virtual {v8, v9, v10, v11}, Lcom/syu/remote/RemoteTools;->sendInt(II[I)V

    goto/16 :goto_0

    .line 6116
    :cond_1e
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Gaode"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_1f

    .line 6118
    const-string v8, "com.autonavi.amapauto"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "music"

    .line 6117
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6119
    :cond_1f
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Veding"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_20

    .line 6121
    const-string v8, "com.android.vending"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "music"

    .line 6120
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6122
    :cond_20
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_YouTuBe"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_21

    .line 6124
    const-string v8, "com.google.android.youtube"

    const-string v9, "com.google.android.youtube.app.honeycomb.Shell$HomeActivity"

    invoke-direct {p0, v8, v9}, Lcom/android/launcher4/Launcher;->getIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "music"

    .line 6123
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6125
    :cond_21
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Chrome"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_22

    .line 6127
    const-string v8, "com.android.chrome"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "music"

    .line 6126
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6128
    :cond_22
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Custom"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_23

    .line 6129
    invoke-static {p0, p1}, Lcom/android/launcher4/RechargeDialogFragment;->openRecharge(Lcom/android/launcher4/Launcher;Landroid/view/View;)V

    goto/16 :goto_0

    .line 6130
    :cond_23
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Klfm"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_24

    .line 6132
    const-string v8, "com.edog.car"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "music"

    .line 6131
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6133
    :cond_24
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Kuwo"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_25

    .line 6135
    const-string v8, "cn.kuwo.kwmusiccar"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "music"

    .line 6134
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6136
    :cond_25
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Dvr"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_26

    .line 6138
    const-string v8, "com.syu.dvr"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "music"

    .line 6137
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6139
    :cond_26
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Dvd"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_27

    .line 6141
    const-string v8, "com.syu.dvd"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "music"

    .line 6140
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6142
    :cond_27
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Steer"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_28

    .line 6144
    const-string v8, "com.syu.steer"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "music"

    .line 6143
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6145
    :cond_28
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Easyconn"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_29

    .line 6147
    const-string v8, "net.easyconn"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 6148
    const-string v9, "music"

    .line 6146
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6149
    :cond_29
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Recharge"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_2a

    .line 6151
    const-string v8, "com.syu.unicar"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 6152
    const-string v9, "music"

    .line 6150
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6153
    :cond_2a
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Voice"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_2b

    .line 6155
    const-string v8, "com.syu.voice"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "music"

    .line 6154
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6156
    :cond_2b
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_File"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_2c

    .line 6158
    const-string v8, "com.syu.filemanager"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 6159
    const-string v9, "music"

    .line 6157
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6160
    :cond_2c
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Car"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_2d

    .line 6162
    const-string v8, "com.syu.car"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "music"

    .line 6161
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6163
    :cond_2d
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Tire"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_2e

    .line 6165
    const-string v8, "com.cz.usbserial.tpms"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 6166
    const-string v9, "music"

    .line 6164
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6167
    :cond_2e
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Time"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eq p1, v8, :cond_2f

    .line 6168
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Time_Two"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_30

    .line 6170
    :cond_2f
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.settings.DATE_SETTINGS"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6171
    .local v2, "mIntent":Landroid/content/Intent;
    const-string v8, "date"

    invoke-virtual {p0, p1, v2, v8}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6172
    .end local v2    # "mIntent":Landroid/content/Intent;
    :cond_30
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "Setting"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eq p1, v8, :cond_31

    .line 6173
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Settings"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_32

    .line 6174
    :cond_31
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->pipViews:Landroid/view/View;

    invoke-static {v8}, Lcom/syu/util/WindowUtil;->removePip(Landroid/view/View;)V

    .line 6176
    const-string v8, "com.syu.settings"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 6177
    const-string v9, "music"

    .line 6175
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6178
    :cond_32
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "Video"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_33

    .line 6179
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->pipViews:Landroid/view/View;

    invoke-static {v8}, Lcom/syu/util/WindowUtil;->removePip(Landroid/view/View;)V

    .line 6181
    const-string v8, "com.syu.video"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "music"

    .line 6180
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6182
    :cond_33
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "Btav"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_34

    .line 6183
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 6184
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.syu.bt"

    .line 6185
    const-string v10, "com.syu.bt.act.ActBtAvStart"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6184
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6186
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Launcher;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 6187
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_34
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "ECAR"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_35

    .line 6188
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 6189
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.coagent.ecar"

    .line 6190
    const-string v10, "com.coagent.ecarnet.car.activity.WelcomeActivity"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6189
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6191
    const-string v8, "android.intent.category.MAIN"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6192
    const/high16 v8, 0x10200000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6194
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Launcher;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 6195
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_35
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "Kuwo"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_36

    .line 6197
    const-string v8, "cn.kuwo.kwmusiccar"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "music"

    .line 6196
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6198
    :cond_36
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "UNICAR"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_37

    .line 6200
    const-string v8, "com.syu.unicar"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 6201
    const-string v9, "unicar"

    .line 6199
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6202
    :cond_37
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "Music"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_38

    .line 6205
    const-string v8, "com.syu.music"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "music"

    .line 6204
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6206
    :cond_38
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "Klfm"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_39

    .line 6208
    const-string v8, "com.edog.car"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "music"

    .line 6207
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6209
    :cond_39
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "HONGFANS"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_3a

    .line 6211
    const-string v8, "com.hongfans.rearview"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 6212
    const-string v9, "hongfansAction"

    .line 6210
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6213
    :cond_3a
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "Dvr"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_3b

    .line 6215
    const-string v8, "com.syu.dvr"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "music"

    .line 6214
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6216
    :cond_3b
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "Light"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_3c

    .line 6218
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/syu/car/CarStates;->getCar(Landroid/content/Context;)Lcom/syu/car/CarStates;

    move-result-object v8

    .line 6219
    invoke-virtual {v8}, Lcom/syu/car/CarStates;->getTools()Lcom/syu/remote/RemoteTools;

    move-result-object v8

    .line 6220
    const/4 v9, 0x0

    .line 6221
    const/16 v10, 0xa

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, -0x3

    aput v13, v11, v12

    .line 6220
    invoke-virtual {v8, v9, v10, v11}, Lcom/syu/remote/RemoteTools;->sendInt(II[I)V

    goto/16 :goto_0

    .line 6222
    :cond_3c
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "CLOLSESCREEN"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_3d

    .line 6224
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/syu/car/CarStates;->getCar(Landroid/content/Context;)Lcom/syu/car/CarStates;

    move-result-object v8

    .line 6225
    invoke-virtual {v8}, Lcom/syu/car/CarStates;->getTools()Lcom/syu/remote/RemoteTools;

    move-result-object v8

    .line 6226
    const/4 v9, 0x0

    .line 6227
    const/16 v10, 0x10

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, 0x1

    aput v13, v11, v12

    .line 6226
    invoke-virtual {v8, v9, v10, v11}, Lcom/syu/remote/RemoteTools;->sendInt(II[I)V

    goto/16 :goto_0

    .line 6228
    :cond_3d
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "Wifi"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_3e

    .line 6229
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.settings.WIFI_SETTINGS"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6230
    const-string v9, "settings"

    .line 6229
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6231
    :cond_3e
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "Sound"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_3f

    .line 6233
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/syu/car/CarStates;->getCar(Landroid/content/Context;)Lcom/syu/car/CarStates;

    move-result-object v8

    .line 6234
    invoke-virtual {v8}, Lcom/syu/car/CarStates;->getTools()Lcom/syu/remote/RemoteTools;

    move-result-object v8

    .line 6235
    const/4 v9, 0x4

    .line 6236
    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, -0x6

    aput v13, v11, v12

    .line 6235
    invoke-virtual {v8, v9, v10, v11}, Lcom/syu/remote/RemoteTools;->sendInt(II[I)V

    goto/16 :goto_0

    .line 6237
    :cond_3f
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "CloseSound"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_40

    .line 6239
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/syu/car/CarStates;->getCar(Landroid/content/Context;)Lcom/syu/car/CarStates;

    move-result-object v8

    .line 6240
    invoke-virtual {v8}, Lcom/syu/car/CarStates;->getTools()Lcom/syu/remote/RemoteTools;

    move-result-object v8

    .line 6241
    const/4 v9, 0x4

    .line 6242
    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, -0x5

    aput v13, v11, v12

    .line 6241
    invoke-virtual {v8, v9, v10, v11}, Lcom/syu/remote/RemoteTools;->sendInt(II[I)V

    goto/16 :goto_0

    .line 6243
    :cond_40
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "Eq"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_41

    .line 6245
    const-string v8, "com.syu.eq"

    invoke-static {p0, v8}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "eq"

    .line 6244
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6246
    :cond_41
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "Time"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_42

    .line 6247
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.settings.DATE_SETTINGS"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6248
    .restart local v2    # "mIntent":Landroid/content/Intent;
    const-string v8, "date"

    invoke-virtual {p0, p1, v2, v8}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6249
    .end local v2    # "mIntent":Landroid/content/Intent;
    :cond_42
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Dvr_Rec"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_43

    .line 6250
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.syu.dvr.server.CollisionVideoService"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6251
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v8, "android.com.syu.dvr.action.RECORD"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6252
    const-string v8, "com.syu.dvr"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6253
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Launcher;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 6254
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_43
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Dvr_Lock"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_44

    .line 6255
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.syu.dvr.server.CollisionVideoService"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6256
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v8, "android.com.syu.dvr.action.LOCKE"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6257
    const-string v8, "com.syu.dvr"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6258
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Launcher;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 6259
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_44
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_Dvr_Catch"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_45

    .line 6260
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.syu.dvr.server.CollisionVideoService"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6261
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v8, "android.com.syu.dvr.action.PHOTO"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6262
    const-string v8, "com.syu.dvr"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6263
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Launcher;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 6264
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_45
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "WS_BRIGHT"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eq p1, v8, :cond_46

    iget-object v8, p0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    const-string v9, "BRIGHT"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_0

    .line 6265
    :cond_46
    new-instance v8, Lcom/syu/popwindow/PopWindowBright;

    sget-object v9, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    iget v10, p0, Lcom/android/launcher4/Launcher;->mBrightLevel:I

    invoke-direct {v8, v9, v10}, Lcom/syu/popwindow/PopWindowBright;-><init>(Landroid/content/Context;I)V

    iget-object v9, p0, Lcom/android/launcher4/Launcher;->mDragLayer:Lcom/android/launcher4/DragLayer;

    invoke-virtual {v8, v9}, Lcom/syu/popwindow/PopWindowBright;->showPopupWindow(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public onClickAllAppsButton(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 6332
    sget-object v0, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/launcher4/Launcher;->showAllApps(ZLcom/android/launcher4/AppsCustomizePagedView$ContentType;Z)V

    .line 6333
    return-void
.end method

.method public onClickAppMarketButton(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 6370
    return-void
.end method

.method public onClickSearchButton(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 6289
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 6291
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->onSearchRequested()Z

    .line 6292
    return-void
.end method

.method public onClickVoiceButton(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 6301
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 6303
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->startVoice()V

    .line 6304
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 28
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 511
    const-string v3, "hy"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 516
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher4/Launcher;->requestWindowFeature(I)Z

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    .line 519
    const/16 v5, 0x400

    .line 518
    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFlags(II)V

    .line 522
    :cond_0
    sget-object v3, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher4/Launcher;->app:Lcom/android/launcher4/LauncherApplication;

    .line 523
    sput-object p0, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 524
    const-string v3, "com.android.browser"

    invoke-static {v3}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher4/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 526
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v2

    .line 527
    .local v2, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    .line 529
    .local v23, "resolver":Landroid/content/ContentResolver;
    const/16 v3, 0xa

    const/4 v4, 0x0

    .line 528
    move-object/from16 v0, v23

    invoke-static {v0, v3, v4}, Lshare/ShareHandler;->getInt(Landroid/content/ContentResolver;II)I

    move-result v3

    sput v3, Lshare/Config;->PLATFORM_ID:I

    .line 531
    const/16 v3, 0x9

    const/4 v4, 0x0

    .line 530
    move-object/from16 v0, v23

    invoke-static {v0, v3, v4}, Lshare/ShareHandler;->getInt(Landroid/content/ContentResolver;II)I

    move-result v3

    sput v3, Lshare/Config;->CUSTOMER_ID:I

    .line 533
    const/16 v3, 0xb

    const/4 v4, 0x0

    .line 532
    move-object/from16 v0, v23

    invoke-static {v0, v3, v4}, Lshare/ShareHandler;->getInt(Landroid/content/ContentResolver;II)I

    move-result v3

    sput v3, Lshare/Config;->USER_UIID:I

    .line 535
    const/16 v3, 0xd

    const/4 v4, 0x0

    .line 534
    move-object/from16 v0, v23

    invoke-static {v0, v3, v4}, Lshare/ShareHandler;->getInt(Landroid/content/ContentResolver;II)I

    move-result v3

    sput v3, Lshare/Config;->CHIP_UIID:I

    .line 538
    sget v3, Lshare/Config;->CHIP_UIID:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 540
    const-string v3, "ro.sim2.iccid"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 539
    sput-object v3, Lcom/android/launcher4/LauncherApplication;->bHideUniCar_New:Ljava/lang/String;

    .line 541
    sget-object v3, Lcom/android/launcher4/LauncherApplication;->bHideUniCar_New:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 542
    sget-object v3, Lcom/android/launcher4/LauncherApplication;->bHideUniCar_New:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 543
    const-string v3, "com.syu.unicar"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/launcher4/LauncherApplication;->appEnable(Ljava/lang/String;I)V

    .line 544
    invoke-static {}, Lcom/android/launcher4/RechargeDialogFragment;->saveRecharge()V

    .line 568
    :cond_1
    :goto_0
    const-string v3, "RechargePackageName"

    const/4 v4, 0x0

    .line 567
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher4/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 570
    .local v24, "sPreferences":Landroid/content/SharedPreferences;
    const-string v3, "defaultPackageName"

    const/4 v4, 0x0

    .line 569
    move-object/from16 v0, v24

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 571
    .local v11, "defaultPackageName":Ljava/lang/String;
    if-eqz v11, :cond_2

    const-string v3, ""

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 572
    sput-object v11, Lcom/android/launcher4/RechargeDialogFragment;->RechargePackageName:Ljava/lang/String;

    .line 576
    :cond_2
    const-string v3, "ro.fyt.hongfan_key"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 577
    .local v27, "str_key":Ljava/lang/String;
    const-string v3, "ro.fyt.hongfan_appsecret"

    .line 578
    const-string v4, "false"

    .line 577
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 579
    .local v26, "str_app":Ljava/lang/String;
    const-string v3, "false"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 580
    const-string v3, "hongfan_key"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 582
    :cond_3
    const-string v3, "false"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 583
    const-string v3, "hongfan_appsecret"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 587
    :cond_4
    const-string v3, "serialno"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/launcher4/Launcher;->str_device:Ljava/lang/String;

    .line 588
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 589
    .local v10, "bActive_6025":Ljava/lang/Boolean;
    sget v3, Lshare/Config;->CHIP_UIID:I

    packed-switch v3, :pswitch_data_0

    .line 600
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 601
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 602
    :cond_6
    const-string v3, "sys.fyt.launcher.warn"

    const-string v4, "warning"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/android/launcher4/Launcher;->areaindex:I

    .line 604
    sget v3, Lshare/Config;->CHIP_UIID:I

    packed-switch v3, :pswitch_data_1

    .line 616
    :cond_7
    :goto_2
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 617
    .local v17, "inparam":Landroid/os/Bundle;
    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    .line 618
    .local v20, "outparam":Landroid/os/Bundle;
    const-string v3, "areaindex"

    sget v4, Lcom/android/launcher4/Launcher;->areaindex:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 619
    sget-boolean v3, Lcom/syu/jni/SyuJniNative;->bLoadLibOk:Z

    if-eqz v3, :cond_8

    .line 620
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v3

    .line 621
    const/16 v4, 0x70

    .line 620
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v3, v4, v0, v1}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher4/Launcher;->bsp_recv:I

    .line 623
    if-eqz v17, :cond_8

    sget v3, Lcom/android/launcher4/Launcher;->bsp_recv:I

    if-nez v3, :cond_8

    .line 624
    const-string v3, "isactived"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/launcher4/Launcher;->isactive:I

    .line 631
    .end local v17    # "inparam":Landroid/os/Bundle;
    .end local v20    # "outparam":Landroid/os/Bundle;
    :cond_8
    :goto_3
    new-instance v25, Landroid/graphics/Point;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Point;-><init>()V

    .line 632
    .local v25, "smallestSize":Landroid/graphics/Point;
    new-instance v19, Landroid/graphics/Point;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Point;-><init>()V

    .line 633
    .local v19, "largestSize":Landroid/graphics/Point;
    new-instance v22, Landroid/graphics/Point;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Point;-><init>()V

    .line 634
    .local v22, "realSize":Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    .line 635
    .local v12, "display":Landroid/view/Display;
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 636
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 637
    new-instance v13, Landroid/util/DisplayMetrics;

    invoke-direct {v13}, Landroid/util/DisplayMetrics;-><init>()V

    .line 638
    .local v13, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v12, v13}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 644
    iget v4, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 645
    iget v5, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v22

    iget v6, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v22

    iget v7, v0, Landroid/graphics/Point;->y:I

    iget v8, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 646
    iget v9, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v3, p0

    .line 644
    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher4/LauncherAppState;->initDynamicGrid(Landroid/content/Context;IIIIII)Lcom/android/launcher4/DeviceProfile;

    move-result-object v16

    .line 659
    .local v16, "grid":Lcom/android/launcher4/DeviceProfile;
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    .line 660
    const/4 v4, 0x0

    .line 658
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher4/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher4/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 661
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/launcher4/LauncherAppState;->setLauncher(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/LauncherModel;

    move-result-object v3

    sput-object v3, Lcom/android/launcher4/Launcher;->mModel:Lcom/android/launcher4/LauncherModel;

    .line 662
    invoke-virtual {v2}, Lcom/android/launcher4/LauncherAppState;->getIconCache()Lcom/android/launcher4/IconCache;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher4/Launcher;->mIconCache:Lcom/android/launcher4/IconCache;

    .line 663
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->mIconCache:Lcom/android/launcher4/IconCache;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/launcher4/IconCache;->flushInvalidIcons(Lcom/android/launcher4/DeviceProfile;)V

    .line 664
    new-instance v3, Lcom/android/launcher4/DragController;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/launcher4/DragController;-><init>(Lcom/android/launcher4/Launcher;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher4/Launcher;->mDragController:Lcom/android/launcher4/DragController;

    .line 665
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher4/Launcher;->mInflater:Landroid/view/LayoutInflater;

    .line 667
    new-instance v3, Lcom/android/launcher4/Stats;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/launcher4/Stats;-><init>(Lcom/android/launcher4/Launcher;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher4/Launcher;->mStats:Lcom/android/launcher4/Stats;

    .line 669
    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher4/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 671
    new-instance v3, Lcom/android/launcher4/LauncherAppWidgetHost;

    sget v4, Lcom/android/launcher4/Launcher;->APPWIDGET_HOST_ID:I

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/launcher4/LauncherAppWidgetHost;-><init>(Lcom/android/launcher4/Launcher;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher4/Launcher;->mAppWidgetHost:Lcom/android/launcher4/LauncherAppWidgetHost;

    .line 672
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->mAppWidgetHost:Lcom/android/launcher4/LauncherAppWidgetHost;

    invoke-virtual {v3}, Lcom/android/launcher4/LauncherAppWidgetHost;->startListening()V

    .line 674
    invoke-static/range {p0 .. p0}, Lcom/syu/weather/WeatherManager;->initialize(Landroid/content/Context;)Lcom/syu/weather/WeatherManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher4/Launcher;->manager:Lcom/syu/weather/WeatherManager;

    .line 675
    const-string v3, "fangyitong"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcn/kuwo/autosdk/api/KWAPI;->createKWAPI(Landroid/content/Context;Ljava/lang/String;)Lcn/kuwo/autosdk/api/KWAPI;

    move-result-object v3

    sput-object v3, Lcom/android/launcher4/Launcher;->kwAPi:Lcn/kuwo/autosdk/api/KWAPI;

    .line 676
    sget-object v3, Lcom/android/launcher4/Launcher;->kwAPi:Lcn/kuwo/autosdk/api/KWAPI;

    if-eqz v3, :cond_9

    .line 677
    sget-object v3, Lcom/android/launcher4/Launcher;->kwAPi:Lcn/kuwo/autosdk/api/KWAPI;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Launcher;->onRefreshKwStatus:Lcn/kuwo/autosdk/api/OnPlayerStatusListener;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lcn/kuwo/autosdk/api/KWAPI;->registerPlayerStatusListener(Landroid/content/Context;Lcn/kuwo/autosdk/api/OnPlayerStatusListener;)V

    .line 685
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher4/Launcher;->mPaused:Z

    .line 692
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->checkForLocaleChange()V

    .line 693
    sget-boolean v3, Lcom/android/launcher4/LauncherApplication;->is3g:Z

    if-eqz v3, :cond_11

    .line 694
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->launcher_3g:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher4/Launcher;->setContentView(I)V

    .line 699
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->setupViews()V

    .line 700
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher4/DeviceProfile;->layout(Lcom/android/launcher4/Launcher;)V

    .line 702
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->registerContentObservers()V

    .line 704
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->lockAllApps()V

    .line 706
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher4/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->mSavedState:Landroid/os/Bundle;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher4/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    if-eqz v3, :cond_a

    .line 711
    const-string v3, "mAppsCustomizeContent"

    const-string v4, "mAppsCustomizeContent != null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    .line 713
    invoke-static/range {p0 .. p0}, Lcom/android/launcher4/LauncherModel;->getSortedWidgetsAndShortcuts(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 712
    invoke-virtual {v3, v4}, Lcom/android/launcher4/AppsCustomizePagedView;->onPackagesUpdated(Ljava/util/ArrayList;)V

    .line 719
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher4/Launcher;->mRestoring:Z

    if-nez v3, :cond_b

    .line 720
    sget-boolean v3, Lcom/android/launcher4/Launcher;->sPausedFromUserAction:Z

    if-eqz v3, :cond_12

    .line 724
    sget-object v3, Lcom/android/launcher4/Launcher;->mModel:Lcom/android/launcher4/LauncherModel;

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher4/LauncherModel;->startLoader(ZI)V

    .line 734
    :cond_b
    :goto_5
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher4/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 735
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 737
    new-instance v15, Landroid/content/IntentFilter;

    .line 738
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 737
    invoke-direct {v15, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 739
    .local v15, "filter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Lcom/android/launcher4/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 740
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->adasReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/Launcher;->ADASAction:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher4/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 742
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Launcher;->runnable_register:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 744
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->updateGlobalIcons()V

    .line 748
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher4/Launcher;->unlockScreenOrientation(Z)V

    .line 750
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->showFirstRunCling()V

    .line 751
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 752
    const-string v4, "cling_gel.first_run.dismissed"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_d

    .line 753
    sget-object v3, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 754
    const v4, 0x7f0a0023

    .line 753
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 754
    if-eqz v3, :cond_c

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->setDefaultWallpaper()V

    .line 759
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 760
    .local v14, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "cling_gel.first_run.dismissed"

    const/4 v4, 0x1

    invoke-interface {v14, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 761
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 764
    .end local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_d
    invoke-static/range {p0 .. p0}, Lcom/syu/car/CarStates;->getCar(Landroid/content/Context;)Lcom/syu/car/CarStates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/car/CarStates;->getTools()Lcom/syu/remote/RemoteTools;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher4/Launcher;->tools:Lcom/syu/remote/RemoteTools;

    .line 766
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->tools:Lcom/syu/remote/RemoteTools;

    const/4 v4, 0x1

    .line 767
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/Launcher;->refreshRadioBand:Lcom/syu/remote/Callback$OnRefreshLisenter;

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 766
    invoke-virtual {v3, v4, v5, v6}, Lcom/syu/remote/RemoteTools;->addRefreshLisenter(ILcom/syu/remote/Callback$OnRefreshLisenter;[I)V

    .line 768
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->tools:Lcom/syu/remote/RemoteTools;

    const/4 v4, 0x1

    .line 769
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/Launcher;->refreshRadioFreq:Lcom/syu/remote/Callback$OnRefreshLisenter;

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    .line 768
    invoke-virtual {v3, v4, v5, v6}, Lcom/syu/remote/RemoteTools;->addRefreshLisenter(ILcom/syu/remote/Callback$OnRefreshLisenter;[I)V

    .line 771
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->tools:Lcom/syu/remote/RemoteTools;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/Launcher;->refreshMain:Lcom/syu/remote/Callback$OnRefreshLisenter;

    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_1

    invoke-virtual {v3, v4, v5, v6}, Lcom/syu/remote/RemoteTools;->addRefreshLisenter(ILcom/syu/remote/Callback$OnRefreshLisenter;[I)V

    .line 776
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->tools:Lcom/syu/remote/RemoteTools;

    const/4 v4, 0x4

    .line 777
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/Launcher;->refreshMain:Lcom/syu/remote/Callback$OnRefreshLisenter;

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_2

    .line 776
    invoke-virtual {v3, v4, v5, v6}, Lcom/syu/remote/RemoteTools;->addRefreshLisenter(ILcom/syu/remote/Callback$OnRefreshLisenter;[I)V

    .line 779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->tools:Lcom/syu/remote/RemoteTools;

    const/4 v4, 0x7

    .line 780
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/Launcher;->refreshMain:Lcom/syu/remote/Callback$OnRefreshLisenter;

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_3

    .line 779
    invoke-virtual {v3, v4, v5, v6}, Lcom/syu/remote/RemoteTools;->addRefreshLisenter(ILcom/syu/remote/Callback$OnRefreshLisenter;[I)V

    .line 782
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->tools:Lcom/syu/remote/RemoteTools;

    const/4 v4, 0x0

    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_4

    invoke-virtual {v3, v4, v5}, Lcom/syu/remote/RemoteTools;->notify(I[I)V

    .line 785
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->tools:Lcom/syu/remote/RemoteTools;

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/syu/remote/RemoteTools;->notify(I[I)V

    .line 786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->tools:Lcom/syu/remote/RemoteTools;

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/syu/remote/RemoteTools;->notify(I[I)V

    .line 787
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Launcher;->tools:Lcom/syu/remote/RemoteTools;

    const/4 v4, 0x7

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_5

    invoke-virtual {v3, v4, v5}, Lcom/syu/remote/RemoteTools;->notify(I[I)V

    .line 789
    return-void

    .line 546
    .end local v10    # "bActive_6025":Ljava/lang/Boolean;
    .end local v11    # "defaultPackageName":Ljava/lang/String;
    .end local v12    # "display":Landroid/view/Display;
    .end local v13    # "dm":Landroid/util/DisplayMetrics;
    .end local v15    # "filter":Landroid/content/IntentFilter;
    .end local v16    # "grid":Lcom/android/launcher4/DeviceProfile;
    .end local v19    # "largestSize":Landroid/graphics/Point;
    .end local v22    # "realSize":Landroid/graphics/Point;
    .end local v24    # "sPreferences":Landroid/content/SharedPreferences;
    .end local v25    # "smallestSize":Landroid/graphics/Point;
    .end local v26    # "str_app":Ljava/lang/String;
    .end local v27    # "str_key":Ljava/lang/String;
    :cond_e
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 547
    .local v21, "outparamkey":Landroid/os/Bundle;
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v3

    .line 548
    const/16 v4, 0xa1

    const/4 v5, 0x0

    .line 547
    move-object/from16 v0, v21

    invoke-virtual {v3, v4, v5, v0}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 551
    if-eqz v21, :cond_1

    .line 552
    const-string v3, "param0"

    const/16 v4, 0xff

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 553
    .local v18, "key_recv":I
    const/16 v3, 0x10

    move/from16 v0, v18

    if-ne v0, v3, :cond_f

    .line 555
    const-string v3, "com.syu.unicar"

    const/4 v4, 0x1

    .line 554
    invoke-static {v3, v4}, Lcom/android/launcher4/LauncherApplication;->appEnable(Ljava/lang/String;I)V

    .line 556
    invoke-static {}, Lcom/android/launcher4/RechargeDialogFragment;->saveRecharge()V

    goto/16 :goto_0

    .line 559
    :cond_f
    const-string v3, "com.syu.unicar"

    const/4 v4, 0x0

    .line 558
    invoke-static {v3, v4}, Lcom/android/launcher4/LauncherApplication;->appEnable(Ljava/lang/String;I)V

    .line 560
    invoke-static {}, Lcom/android/launcher4/RechargeDialogFragment;->cleanRecharge()V

    goto/16 :goto_0

    .line 591
    .end local v18    # "key_recv":I
    .end local v21    # "outparamkey":Landroid/os/Bundle;
    .restart local v10    # "bActive_6025":Ljava/lang/Boolean;
    .restart local v11    # "defaultPackageName":Ljava/lang/String;
    .restart local v24    # "sPreferences":Landroid/content/SharedPreferences;
    .restart local v26    # "str_app":Ljava/lang/String;
    .restart local v27    # "str_key":Ljava/lang/String;
    :pswitch_0
    sget-object v3, Lcom/android/launcher4/LauncherApplication;->bForegin:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 592
    sget-object v3, Lcom/android/launcher4/LauncherApplication;->bForegin:Ljava/lang/String;

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 597
    :pswitch_1
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto/16 :goto_1

    .line 606
    :pswitch_2
    sget-object v3, Lcom/android/launcher4/LauncherApplication;->bForegin:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 607
    sget-object v3, Lcom/android/launcher4/LauncherApplication;->bForegin:Ljava/lang/String;

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 608
    const/16 v3, 0xff

    sput v3, Lcom/android/launcher4/Launcher;->areaindex:I

    goto/16 :goto_2

    .line 612
    :pswitch_3
    const/16 v3, 0xfe

    sput v3, Lcom/android/launcher4/Launcher;->areaindex:I

    goto/16 :goto_2

    .line 627
    :cond_10
    const/4 v3, 0x1

    sput v3, Lcom/android/launcher4/Launcher;->isactive:I

    goto/16 :goto_3

    .line 696
    .restart local v12    # "display":Landroid/view/Display;
    .restart local v13    # "dm":Landroid/util/DisplayMetrics;
    .restart local v16    # "grid":Lcom/android/launcher4/DeviceProfile;
    .restart local v19    # "largestSize":Landroid/graphics/Point;
    .restart local v22    # "realSize":Landroid/graphics/Point;
    .restart local v25    # "smallestSize":Landroid/graphics/Point;
    :cond_11
    const v3, 0x7f040021

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher4/Launcher;->setContentView(I)V

    goto/16 :goto_4

    .line 729
    :cond_12
    sget-object v3, Lcom/android/launcher4/Launcher;->mModel:Lcom/android/launcher4/LauncherModel;

    const/4 v4, 0x1

    sget-object v5, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher4/Workspace;->getCurrentPage()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher4/LauncherModel;->startLoader(ZI)V

    goto/16 :goto_5

    .line 589
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 604
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 769
    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data

    .line 771
    :array_1
    .array-data 4
        0x0
        0x32
        0x4
        0x3c
        0x65
        0x1f
    .end array-data

    .line 777
    :array_2
    .array-data 4
        0x2
        0x3
    .end array-data

    .line 780
    :array_3
    .array-data 4
        0x3e8
        0x409
    .end array-data

    .line 782
    :array_4
    .array-data 4
        0x0
        0x32
        0x3c
        0x4
        0x65
        0x1f
    .end array-data

    .line 787
    :array_5
    .array-data 4
        0x3e8
        0x409
    .end array-data
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 5448
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 5450
    const-string v2, "hy"

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5451
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->tools:Lcom/syu/remote/RemoteTools;

    .line 5452
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->refreshMain:Lcom/syu/remote/Callback$OnRefreshLisenter;

    .line 5451
    invoke-virtual {v2, v6, v3}, Lcom/syu/remote/RemoteTools;->removeRefreshLisenter(ILcom/syu/remote/Callback$OnRefreshLisenter;)V

    .line 5453
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->tools:Lcom/syu/remote/RemoteTools;

    const/4 v3, 0x4

    .line 5454
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->refreshMain:Lcom/syu/remote/Callback$OnRefreshLisenter;

    .line 5453
    invoke-virtual {v2, v3, v4}, Lcom/syu/remote/RemoteTools;->removeRefreshLisenter(ILcom/syu/remote/Callback$OnRefreshLisenter;)V

    .line 5455
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->tools:Lcom/syu/remote/RemoteTools;

    const/4 v3, 0x7

    .line 5456
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->refreshMain:Lcom/syu/remote/Callback$OnRefreshLisenter;

    .line 5455
    invoke-virtual {v2, v3, v4}, Lcom/syu/remote/RemoteTools;->removeRefreshLisenter(ILcom/syu/remote/Callback$OnRefreshLisenter;)V

    .line 5459
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5460
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5461
    sget-object v2, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/launcher4/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5464
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 5465
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    sget-object v2, Lcom/android/launcher4/Launcher;->mModel:Lcom/android/launcher4/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher4/LauncherModel;->stopLoader()V

    .line 5466
    invoke-virtual {v0, v5}, Lcom/android/launcher4/LauncherAppState;->setLauncher(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/LauncherModel;

    .line 5469
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mAppWidgetHost:Lcom/android/launcher4/LauncherAppWidgetHost;

    invoke-virtual {v2}, Lcom/android/launcher4/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5475
    :goto_0
    iput-object v5, p0, Lcom/android/launcher4/Launcher;->mAppWidgetHost:Lcom/android/launcher4/LauncherAppWidgetHost;

    .line 5477
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 5479
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/method/TextKeyListener;->release()V

    .line 5484
    sget-object v2, Lcom/android/launcher4/Launcher;->mModel:Lcom/android/launcher4/LauncherModel;

    if-eqz v2, :cond_0

    .line 5485
    sget-object v2, Lcom/android/launcher4/Launcher;->mModel:Lcom/android/launcher4/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher4/LauncherModel;->unbindItemInfosAndClearQueuedBindRunnables()V

    .line 5488
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 5489
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/launcher4/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5490
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->adasReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/launcher4/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5492
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mDragLayer:Lcom/android/launcher4/DragLayer;

    invoke-virtual {v2}, Lcom/android/launcher4/DragLayer;->clearAllResizeFrames()V

    .line 5493
    sget-object v2, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher4/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5494
    sget-object v2, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher4/Workspace;->removeAllViews()V

    .line 5495
    sput-object v5, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 5496
    iput-object v5, p0, Lcom/android/launcher4/Launcher;->mDragController:Lcom/android/launcher4/DragController;

    .line 5498
    invoke-static {}, Lcom/android/launcher4/LauncherAnimUtils;->onDestroyActivity()V

    .line 5499
    return-void

    .line 5470
    :catch_0
    move-exception v1

    .line 5471
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "Launcher"

    .line 5472
    const-string v3, "problem while stopping AppWidgetHost during Launcher destruction"

    .line 5471
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5161
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 5162
    iput-boolean v1, p0, Lcom/android/launcher4/Launcher;->mVisible:Z

    .line 5164
    iget-boolean v0, p0, Lcom/android/launcher4/Launcher;->mAttached:Z

    if-eqz v0, :cond_0

    .line 5165
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5166
    iput-boolean v1, p0, Lcom/android/launcher4/Launcher;->mAttached:Z

    .line 5168
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->updateRunning()V

    .line 5169
    return-void
.end method

.method protected onFinishBindingItems()V
    .locals 1

    .prologue
    .line 2615
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->hasCustomContentToLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2616
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2617
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->addCustomContentToLeft()V

    .line 2619
    :cond_0
    return-void
.end method

.method protected onInteractionBegin()V
    .locals 0

    .prologue
    .line 6387
    return-void
.end method

.method protected onInteractionEnd()V
    .locals 0

    .prologue
    .line 6377
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    .line 2702
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    .line 2703
    .local v3, "uniChar":I
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2704
    .local v1, "handled":Z
    if-lez v3, :cond_1

    .line 2705
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v4

    .line 2706
    .local v2, "isKeyNotWhitespace":Z
    :goto_0
    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->acceptFilter()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    .line 2707
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    .line 2708
    sget-object v6, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    iget-object v7, p0, Lcom/android/launcher4/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 2707
    invoke-virtual {v5, v6, v7, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2709
    .local v0, "gotKey":Z
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/launcher4/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher4/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 2717
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->onSearchRequested()Z

    move-result v1

    .line 2726
    .end local v0    # "gotKey":Z
    .end local v1    # "handled":Z
    :cond_0
    :goto_1
    return v1

    .line 2704
    .end local v2    # "isKeyNotWhitespace":Z
    .restart local v1    # "handled":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2722
    .restart local v2    # "isKeyNotWhitespace":Z
    :cond_2
    const/16 v5, 0x52

    if-ne p1, v5, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    .line 2723
    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 7045
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->isDraggingEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 7166
    :cond_0
    :goto_0
    return v3

    .line 7048
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->isWorkspaceLocked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 7051
    iget-object v5, p0, Lcom/android/launcher4/Launcher;->mState:Lcom/android/launcher4/Launcher$State;

    sget-object v6, Lcom/android/launcher4/Launcher$State;->WORKSPACE:Lcom/android/launcher4/Launcher$State;

    if-ne v5, v6, :cond_0

    .line 7054
    const-string v5, "onLongClick"

    invoke-static {v5}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 7056
    instance-of v5, p1, Lcom/android/launcher4/Workspace;

    if-eqz v5, :cond_3

    .line 7058
    sget-object v5, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher4/Workspace;->isInOverviewMode()Z

    move-result v5

    if-nez v5, :cond_3

    .line 7059
    sget-object v5, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher4/Workspace;->enterOverviewMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7060
    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->hideHotseat(Z)V

    .line 7061
    sget-object v5, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v5, v3, v4}, Lcom/android/launcher4/Workspace;->performHapticFeedback(II)Z

    move v3, v4

    .line 7064
    goto :goto_0

    .line 7066
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->showHotseat(Z)V

    .line 7067
    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->updateWallpaperVisibility(Z)V

    goto :goto_0

    .line 7073
    :cond_3
    instance-of v5, p1, Lcom/android/launcher4/CellLayout;

    if-nez v5, :cond_5

    .line 7074
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1    # "v":Landroid/view/View;
    check-cast p1, Landroid/view/View;

    .line 7091
    .restart local p1    # "v":Landroid/view/View;
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->resetAddInfo()V

    .line 7093
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 7092
    check-cast v2, Lcom/android/launcher4/CellLayout$CellInfo;

    .line 7095
    .local v2, "longClickCellInfo":Lcom/android/launcher4/CellLayout$CellInfo;
    if-nez v2, :cond_7

    move v3, v4

    .line 7096
    goto :goto_0

    .line 7076
    .end local v2    # "longClickCellInfo":Lcom/android/launcher4/CellLayout$CellInfo;
    :cond_5
    sget-object v5, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher4/Workspace;->isInOverviewMode()Z

    move-result v5

    if-nez v5, :cond_4

    .line 7077
    sget-object v5, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher4/Workspace;->enterOverviewMode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 7078
    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->hideHotseat(Z)V

    .line 7079
    sget-object v5, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v5, v3, v4}, Lcom/android/launcher4/Workspace;->performHapticFeedback(II)Z

    move v3, v4

    .line 7082
    goto :goto_0

    .line 7084
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->showHotseat(Z)V

    .line 7085
    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->updateWallpaperVisibility(Z)V

    goto :goto_0

    .line 7099
    .restart local v2    # "longClickCellInfo":Lcom/android/launcher4/CellLayout$CellInfo;
    :cond_7
    sget-object v5, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v5}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 7100
    const v6, 0x7f0a001d

    .line 7099
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 7100
    if-eqz v5, :cond_8

    .line 7101
    iget-object v5, v2, Lcom/android/launcher4/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v5, :cond_8

    .line 7108
    iget-object v5, v2, Lcom/android/launcher4/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7109
    const-string v6, "com.android.launcher4.LauncherAppWidgetHost"

    .line 7108
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 7109
    if-eqz v5, :cond_8

    .line 7111
    iget v5, v2, Lcom/android/launcher4/CellLayout$CellInfo;->cellX:I

    if-nez v5, :cond_8

    .line 7112
    iget v5, v2, Lcom/android/launcher4/CellLayout$CellInfo;->cellY:I

    if-nez v5, :cond_8

    .line 7113
    iget-wide v6, v2, Lcom/android/launcher4/CellLayout$CellInfo;->screenId:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 7130
    :cond_8
    iget-object v1, v2, Lcom/android/launcher4/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 7131
    .local v1, "itemUnderLongClick":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 7132
    sget-object v5, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher4/Workspace;->allowLongPress()Z

    move-result v5

    if-nez v5, :cond_a

    move v0, v3

    .line 7133
    .local v0, "allowLongPress":Z
    :goto_1
    if-eqz v0, :cond_9

    iget-object v5, p0, Lcom/android/launcher4/Launcher;->mDragController:Lcom/android/launcher4/DragController;

    invoke-virtual {v5}, Lcom/android/launcher4/DragController;->isDragging()Z

    move-result v5

    if-nez v5, :cond_9

    .line 7134
    if-nez v1, :cond_c

    .line 7136
    sget-object v5, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v5, v3, v4}, Lcom/android/launcher4/Workspace;->performHapticFeedback(II)Z

    .line 7140
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher4/Workspace;->isInOverviewMode()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 7141
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v3, p1}, Lcom/android/launcher4/Workspace;->startReordering(Landroid/view/View;)Z

    :cond_9
    :goto_2
    move v3, v4

    .line 7166
    goto/16 :goto_0

    .end local v0    # "allowLongPress":Z
    :cond_a
    move v0, v4

    .line 7131
    goto :goto_1

    .line 7143
    .restart local v0    # "allowLongPress":Z
    :cond_b
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher4/Workspace;->enterOverviewMode()Z

    goto :goto_2

    .line 7146
    :cond_c
    instance-of v3, v1, Lcom/android/launcher4/Folder;

    if-nez v3, :cond_d

    .line 7148
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher4/Workspace;->startDrag(Lcom/android/launcher4/CellLayout$CellInfo;)V

    .line 7151
    :cond_d
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/launcher4/Launcher$82;

    invoke-direct {v5, p0}, Lcom/android/launcher4/Launcher$82;-><init>(Lcom/android/launcher4/Launcher;)V

    .line 7163
    const-wide/16 v6, 0x96

    .line 7151
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v10, 0x400000

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 5325
    const-wide/16 v4, 0x0

    .line 5329
    .local v4, "startTime":J
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 5331
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onNewIntent= "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 5333
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5335
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->closeSystemDialogs()V

    .line 5337
    sget-object v8, Lcom/syu/util/WindowUtil;->AppPackageNmae:Ljava/lang/String;

    const-string v9, "ru.yandex.yandexnavi"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 5338
    iget-object v8, p0, Lcom/android/launcher4/Launcher;->pipViews:Landroid/view/View;

    invoke-static {v8}, Lcom/syu/util/WindowUtil;->startMapPip(Landroid/view/View;)V

    .line 5341
    :cond_0
    iget-boolean v8, p0, Lcom/android/launcher4/Launcher;->mHasFocus:Z

    if-eqz v8, :cond_2

    .line 5342
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v8

    and-int/2addr v8, v10

    if-eq v8, v10, :cond_2

    move v0, v6

    .line 5344
    .local v0, "alreadyOnHome":Z
    :goto_0
    sget-object v8, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    if-nez v8, :cond_3

    .line 5386
    .end local v0    # "alreadyOnHome":Z
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v7

    .line 5341
    goto :goto_0

    .line 5348
    .restart local v0    # "alreadyOnHome":Z
    :cond_3
    sget-object v8, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher4/Workspace;->getOpenFolder()Lcom/android/launcher4/Folder;

    move-result-object v2

    .line 5350
    .local v2, "openFolder":Lcom/android/launcher4/Folder;
    sget-object v8, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher4/Workspace;->exitWidgetResizeMode()V

    .line 5351
    if-eqz v0, :cond_4

    iget-object v8, p0, Lcom/android/launcher4/Launcher;->mState:Lcom/android/launcher4/Launcher$State;

    sget-object v9, Lcom/android/launcher4/Launcher$State;->WORKSPACE:Lcom/android/launcher4/Launcher$State;

    if-ne v8, v9, :cond_4

    .line 5352
    sget-object v8, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher4/Workspace;->isTouchActive()Z

    move-result v8

    if-nez v8, :cond_4

    if-nez v2, :cond_4

    .line 5353
    sget-object v8, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v8, v6}, Lcom/android/launcher4/Workspace;->moveToDefaultScreen(Z)V

    .line 5356
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->closeFolder()V

    .line 5357
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->exitSpringLoadedDragMode()V

    .line 5363
    if-eqz v0, :cond_6

    .line 5364
    invoke-virtual {p0, v6}, Lcom/android/launcher4/Launcher;->showWorkspace(Z)V

    .line 5369
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v3

    .line 5370
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 5371
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/android/launcher4/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 5372
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v1, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 5376
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    iget-object v6, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher4/AppsCustomizeTabHost;

    if-eqz v6, :cond_1

    .line 5377
    iget-object v6, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-virtual {v6}, Lcom/android/launcher4/AppsCustomizeTabHost;->reset()V

    goto :goto_1

    .line 5366
    .end local v3    # "v":Landroid/view/View;
    :cond_6
    sget-object v6, Lcom/android/launcher4/Launcher$State;->WORKSPACE:Lcom/android/launcher4/Launcher$State;

    iput-object v6, p0, Lcom/android/launcher4/Launcher;->mOnResumeState:Lcom/android/launcher4/Launcher$State;

    goto :goto_2
.end method

.method public onPageBoundSynchronously(I)V
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 8517
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8518
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 2587
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->pipViews:Landroid/view/View;

    invoke-static {v0}, Lcom/syu/util/WindowUtil;->removePip(Landroid/view/View;)V

    .line 2588
    const-string v0, "onPause"

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 2590
    invoke-static {}, Lcom/android/launcher4/InstallShortcutReceiver;->enableInstallQueue()V

    .line 2591
    const-string v0, "hy"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->removeMusic:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2593
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/Launcher;->mPaused:Z

    .line 2595
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mDragController:Lcom/android/launcher4/DragController;

    invoke-virtual {v0}, Lcom/android/launcher4/DragController;->cancelDrag()V

    .line 2596
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mDragController:Lcom/android/launcher4/DragController;

    invoke-virtual {v0}, Lcom/android/launcher4/DragController;->resetLastGestureUpTime()V

    .line 2598
    sget-object v0, Lcom/fyt/car/LauncherNotify;->NOTIFIER_MUSIC:Lcom/fyt/car/DataNotifier;

    iget-object v1, p0, Lcom/android/launcher4/Launcher;->refreshMusic:Lcom/fyt/car/IUiRefresher;

    invoke-virtual {v0, v1}, Lcom/fyt/car/DataNotifier;->removeUiRefresher(Lcom/fyt/car/IUiRefresher;)V

    .line 2599
    sget-object v0, Lcom/fyt/car/LauncherNotify;->NOTIFIER_VIDEO:Lcom/fyt/car/DataNotifier;

    iget-object v1, p0, Lcom/android/launcher4/Launcher;->refreshVideo:Lcom/fyt/car/IUiRefresher;

    invoke-virtual {v0, v1}, Lcom/fyt/car/DataNotifier;->removeUiRefresher(Lcom/fyt/car/IUiRefresher;)V

    .line 2600
    sget-object v0, Lcom/fyt/car/LauncherNotify;->NOTIFIER_BTAV:Lcom/fyt/car/DataNotifier;

    iget-object v1, p0, Lcom/android/launcher4/Launcher;->refreshBtav:Lcom/fyt/car/IUiRefresher;

    invoke-virtual {v0, v1}, Lcom/fyt/car/DataNotifier;->removeUiRefresher(Lcom/fyt/car/IUiRefresher;)V

    .line 2601
    sget-object v0, Lcom/fyt/car/LauncherNotify;->NOTIFIER_DVR:Lcom/fyt/car/DataNotifier;

    iget-object v1, p0, Lcom/android/launcher4/Launcher;->refreshDvr:Lcom/fyt/car/IUiRefresher;

    invoke-virtual {v0, v1}, Lcom/fyt/car/DataNotifier;->removeUiRefresher(Lcom/fyt/car/IUiRefresher;)V

    .line 2602
    sget-object v0, Lcom/fyt/car/LauncherNotify;->NOTIFIER_NAVIVIEW:Lcom/fyt/car/DataNotifier;

    iget-object v1, p0, Lcom/android/launcher4/Launcher;->refreshNaviView:Lcom/fyt/car/IUiRefresher;

    invoke-virtual {v0, v1}, Lcom/fyt/car/DataNotifier;->removeUiRefresher(Lcom/fyt/car/IUiRefresher;)V

    .line 2603
    sget-object v0, Lcom/fyt/car/LauncherNotify;->NOTIFIER_NAVISTATE:Lcom/fyt/car/DataNotifier;

    iget-object v1, p0, Lcom/android/launcher4/Launcher;->refreshNaviState:Lcom/fyt/car/IUiRefresher;

    invoke-virtual {v0, v1}, Lcom/fyt/car/DataNotifier;->removeUiRefresher(Lcom/fyt/car/IUiRefresher;)V

    .line 2604
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->clearGaoDeData()V

    .line 2609
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->getCustomContentCallbacks()Lcom/android/launcher4/Launcher$CustomContentCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2610
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->getCustomContentCallbacks()Lcom/android/launcher4/Launcher$CustomContentCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher4/Launcher$CustomContentCallbacks;->onHide()V

    .line 2612
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 5591
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 5592
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->isInOverviewMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5593
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->enterOverviewMode()Z

    .line 5595
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 5390
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 5391
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5394
    return-void

    .line 5391
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5392
    .local v0, "page":I
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher4/Workspace;->restoreInstanceStateForChild(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 13

    .prologue
    .line 1584
    const-string v3, "onResume"

    invoke-static {v3}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 1585
    const-wide/16 v4, 0x0

    .line 1590
    .local v4, "startTime":J
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1592
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->isAllAppsVisible()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1593
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->pipViews:Landroid/view/View;

    invoke-static {v3}, Lcom/syu/util/WindowUtil;->removePip(Landroid/view/View;)V

    .line 1601
    :goto_0
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->tools:Lcom/syu/remote/RemoteTools;

    const/4 v8, 0x1

    .line 1602
    iget-object v9, p0, Lcom/android/launcher4/Launcher;->refreshRadioBand:Lcom/syu/remote/Callback$OnRefreshLisenter;

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 1601
    invoke-virtual {v3, v8, v9, v10}, Lcom/syu/remote/RemoteTools;->addRefreshLisenter(ILcom/syu/remote/Callback$OnRefreshLisenter;[I)V

    .line 1603
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->tools:Lcom/syu/remote/RemoteTools;

    const/4 v8, 0x1

    .line 1604
    iget-object v9, p0, Lcom/android/launcher4/Launcher;->refreshRadioFreq:Lcom/syu/remote/Callback$OnRefreshLisenter;

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    .line 1603
    invoke-virtual {v3, v8, v9, v10}, Lcom/syu/remote/RemoteTools;->addRefreshLisenter(ILcom/syu/remote/Callback$OnRefreshLisenter;[I)V

    .line 1606
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->tools:Lcom/syu/remote/RemoteTools;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/launcher4/Launcher;->refreshMain:Lcom/syu/remote/Callback$OnRefreshLisenter;

    const/4 v10, 0x6

    new-array v10, v10, [I

    fill-array-data v10, :array_1

    invoke-virtual {v3, v8, v9, v10}, Lcom/syu/remote/RemoteTools;->addRefreshLisenter(ILcom/syu/remote/Callback$OnRefreshLisenter;[I)V

    .line 1611
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->tools:Lcom/syu/remote/RemoteTools;

    const/4 v8, 0x4

    .line 1612
    iget-object v9, p0, Lcom/android/launcher4/Launcher;->refreshMain:Lcom/syu/remote/Callback$OnRefreshLisenter;

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_2

    .line 1611
    invoke-virtual {v3, v8, v9, v10}, Lcom/syu/remote/RemoteTools;->addRefreshLisenter(ILcom/syu/remote/Callback$OnRefreshLisenter;[I)V

    .line 1614
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->tools:Lcom/syu/remote/RemoteTools;

    const/4 v8, 0x7

    .line 1615
    iget-object v9, p0, Lcom/android/launcher4/Launcher;->refreshMain:Lcom/syu/remote/Callback$OnRefreshLisenter;

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_3

    .line 1614
    invoke-virtual {v3, v8, v9, v10}, Lcom/syu/remote/RemoteTools;->addRefreshLisenter(ILcom/syu/remote/Callback$OnRefreshLisenter;[I)V

    .line 1617
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->tools:Lcom/syu/remote/RemoteTools;

    const/4 v8, 0x0

    const/4 v9, 0x6

    new-array v9, v9, [I

    fill-array-data v9, :array_4

    invoke-virtual {v3, v8, v9}, Lcom/syu/remote/RemoteTools;->notify(I[I)V

    .line 1620
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->tools:Lcom/syu/remote/RemoteTools;

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-virtual {v3, v8, v9}, Lcom/syu/remote/RemoteTools;->notify(I[I)V

    .line 1621
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->tools:Lcom/syu/remote/RemoteTools;

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput v11, v9, v10

    invoke-virtual {v3, v8, v9}, Lcom/syu/remote/RemoteTools;->notify(I[I)V

    .line 1622
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->tools:Lcom/syu/remote/RemoteTools;

    const/4 v8, 0x7

    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_5

    invoke-virtual {v3, v8, v9}, Lcom/syu/remote/RemoteTools;->notify(I[I)V

    .line 1627
    const/4 v0, 0x1

    .line 1628
    .local v0, "flag":Z
    sget v3, Lshare/Config;->CHIP_UIID:I

    const/4 v8, 0x6

    if-ne v3, v8, :cond_0

    .line 1629
    sget-boolean v3, Lcom/android/launcher4/LauncherApplication;->isHaveDvd:Z

    if-eqz v3, :cond_11

    .line 1630
    const/4 v0, 0x1

    .line 1636
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 1637
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->activeWindow()V

    .line 1642
    :cond_1
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mOnResumeState:Lcom/android/launcher4/Launcher$State;

    sget-object v8, Lcom/android/launcher4/Launcher$State;->WORKSPACE:Lcom/android/launcher4/Launcher$State;

    if-ne v3, v8, :cond_12

    .line 1643
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher4/Launcher;->showWorkspace(Z)V

    .line 1648
    :cond_2
    :goto_2
    sget-object v3, Lcom/android/launcher4/Launcher$State;->NONE:Lcom/android/launcher4/Launcher$State;

    iput-object v3, p0, Lcom/android/launcher4/Launcher;->mOnResumeState:Lcom/android/launcher4/Launcher$State;

    .line 1649
    const-string v3, "hy"

    const-string v8, "onResume"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mState:Lcom/android/launcher4/Launcher$State;

    sget-object v8, Lcom/android/launcher4/Launcher$State;->WORKSPACE:Lcom/android/launcher4/Launcher$State;

    if-ne v3, v8, :cond_13

    const/4 v3, 0x1

    :goto_3
    invoke-direct {p0, v3}, Lcom/android/launcher4/Launcher;->setWorkspaceBackground(Z)V

    .line 1654
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher4/Launcher;->mPaused:Z

    .line 1655
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher4/Launcher;->sPausedFromUserAction:Z

    .line 1656
    iget-boolean v3, p0, Lcom/android/launcher4/Launcher;->mRestoring:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/launcher4/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v3, :cond_4

    .line 1657
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher4/Launcher;->mWorkspaceLoading:Z

    .line 1658
    sget-object v3, Lcom/android/launcher4/Launcher;->mModel:Lcom/android/launcher4/LauncherModel;

    const/4 v8, 0x1

    const/4 v9, -0x1

    invoke-virtual {v3, v8, v9}, Lcom/android/launcher4/LauncherModel;->startLoader(ZI)V

    .line 1659
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher4/Launcher;->mRestoring:Z

    .line 1660
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher4/Launcher;->mOnResumeNeedsLoad:Z

    .line 1662
    :cond_4
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 1666
    const-wide/16 v6, 0x0

    .line 1671
    .local v6, "startTimeCallbacks":J
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    if-eqz v3, :cond_5

    .line 1672
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher4/AppsCustomizePagedView;->setBulkBind(Z)V

    .line 1674
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_14

    .line 1677
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    if-eqz v3, :cond_6

    .line 1678
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/android/launcher4/AppsCustomizePagedView;->setBulkBind(Z)V

    .line 1680
    :cond_6
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1686
    .end local v1    # "i":I
    .end local v6    # "startTimeCallbacks":J
    :cond_7
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 1687
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_15

    .line 1690
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1696
    .end local v1    # "i":I
    :cond_8
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mWaitingForResume:Lcom/android/launcher4/BubbleTextView;

    if-eqz v3, :cond_9

    .line 1698
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mWaitingForResume:Lcom/android/launcher4/BubbleTextView;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/android/launcher4/BubbleTextView;->setStayPressed(Z)V

    .line 1700
    :cond_9
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    if-eqz v3, :cond_a

    .line 1702
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v3}, Lcom/android/launcher4/AppsCustomizePagedView;->resetDrawableState()V

    .line 1713
    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher4/Workspace;->reinflateWidgetsIfNecessary()V

    .line 1716
    invoke-static {p0}, Lcom/android/launcher4/InstallShortcutReceiver;->disableAndFlushInstallQueue(Landroid/content/Context;)V

    .line 1719
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher4/Launcher;->updateVoiceButtonProxyVisible(Z)V

    .line 1724
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->updateGlobalIcons()V

    .line 1730
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher4/Workspace;->getCustomContentCallbacks()Lcom/android/launcher4/Launcher$CustomContentCallbacks;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1737
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher4/Workspace;->isOnOrMovingToCustomContent()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1738
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher4/Workspace;->getCustomContentCallbacks()Lcom/android/launcher4/Launcher$CustomContentCallbacks;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/launcher4/Launcher$CustomContentCallbacks;->onShow()V

    .line 1742
    :cond_b
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher4/Workspace;->updateInteractionForState()V

    .line 1743
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher4/Workspace;->onResume()V

    .line 1745
    sget-object v3, Lcom/fyt/car/LauncherNotify;->NOTIFIER_MUSIC:Lcom/fyt/car/DataNotifier;

    iget-object v8, p0, Lcom/android/launcher4/Launcher;->refreshMusic:Lcom/fyt/car/IUiRefresher;

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Lcom/fyt/car/DataNotifier;->addUiRefresher(Lcom/fyt/car/IUiRefresher;Z)V

    .line 1746
    sget-object v3, Lcom/fyt/car/LauncherNotify;->NOTIFIER_VIDEO:Lcom/fyt/car/DataNotifier;

    iget-object v8, p0, Lcom/android/launcher4/Launcher;->refreshVideo:Lcom/fyt/car/IUiRefresher;

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Lcom/fyt/car/DataNotifier;->addUiRefresher(Lcom/fyt/car/IUiRefresher;Z)V

    .line 1747
    sget-object v3, Lcom/fyt/car/LauncherNotify;->NOTIFIER_BTAV:Lcom/fyt/car/DataNotifier;

    iget-object v8, p0, Lcom/android/launcher4/Launcher;->refreshBtav:Lcom/fyt/car/IUiRefresher;

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Lcom/fyt/car/DataNotifier;->addUiRefresher(Lcom/fyt/car/IUiRefresher;Z)V

    .line 1748
    sget-object v3, Lcom/fyt/car/LauncherNotify;->NOTIFIER_DVR:Lcom/fyt/car/DataNotifier;

    iget-object v8, p0, Lcom/android/launcher4/Launcher;->refreshDvr:Lcom/fyt/car/IUiRefresher;

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Lcom/fyt/car/DataNotifier;->addUiRefresher(Lcom/fyt/car/IUiRefresher;Z)V

    .line 1749
    sget-object v3, Lcom/fyt/car/LauncherNotify;->NOTIFIER_NAVIVIEW:Lcom/fyt/car/DataNotifier;

    iget-object v8, p0, Lcom/android/launcher4/Launcher;->refreshNaviView:Lcom/fyt/car/IUiRefresher;

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Lcom/fyt/car/DataNotifier;->addUiRefresher(Lcom/fyt/car/IUiRefresher;Z)V

    .line 1750
    sget-object v3, Lcom/fyt/car/LauncherNotify;->NOTIFIER_NAVISTATE:Lcom/fyt/car/DataNotifier;

    iget-object v8, p0, Lcom/android/launcher4/Launcher;->refreshNaviState:Lcom/fyt/car/IUiRefresher;

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Lcom/fyt/car/DataNotifier;->addUiRefresher(Lcom/fyt/car/IUiRefresher;Z)V

    .line 1752
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1753
    .local v2, "musicFilter":Landroid/content/IntentFilter;
    const-string v3, "com.fyt.systemui.remove"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1754
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->removeMusic:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/launcher4/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1758
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->firstLayout:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/android/launcher4/Launcher;->isfirstlayout:Z

    if-nez v3, :cond_c

    .line 1760
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->firstLayout:Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1762
    :cond_c
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher4/Launcher;->isfirstlayout:Z

    .line 1764
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->showWeatherInfo()V

    .line 1765
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher4/Launcher;->lastpath:Ljava/lang/String;

    .line 1768
    iget-boolean v3, p0, Lcom/android/launcher4/Launcher;->showKuwoContent:Z

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v8, "cn.kuwo.kwmusiccar"

    invoke-static {v3, v8}, Lcom/syu/util/AppUtil;->isInTheTaskbar(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1770
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher4/Launcher;->showKuwoContent:Z

    .line 1771
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->kuwomusic_playpause:Landroid/widget/Button;

    if-eqz v3, :cond_d

    .line 1772
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->kuwomusic_playpause:Landroid/widget/Button;

    .line 1773
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v8

    iget v8, v8, Lshare/ResValue;->music_pause_icon:I

    .line 1772
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1775
    :cond_d
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mKwMusicName:Landroid/widget/TextView;

    if-eqz v3, :cond_e

    .line 1776
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mKwMusicName:Landroid/widget/TextView;

    const v8, 0x7f0c0083

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1778
    :cond_e
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mKwArtist:Landroid/widget/TextView;

    if-eqz v3, :cond_f

    .line 1779
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mKwArtist:Landroid/widget/TextView;

    const v8, 0x7f0c0084

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1782
    :cond_f
    return-void

    .line 1595
    .end local v0    # "flag":Z
    .end local v2    # "musicFilter":Landroid/content/IntentFilter;
    :cond_10
    const-string v3, "onResume----->startMapPip"

    invoke-static {v3}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 1596
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->pipViews:Landroid/view/View;

    invoke-static {v3}, Lcom/syu/util/WindowUtil;->startMapPip(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1632
    .restart local v0    # "flag":Z
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1644
    :cond_12
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mOnResumeState:Lcom/android/launcher4/Launcher$State;

    sget-object v8, Lcom/android/launcher4/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher4/Launcher$State;

    if-ne v3, v8, :cond_2

    .line 1645
    const/4 v3, 0x0

    sget-object v8, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    .line 1646
    const/4 v9, 0x0

    .line 1645
    invoke-virtual {p0, v3, v8, v9}, Lcom/android/launcher4/Launcher;->showAllApps(ZLcom/android/launcher4/AppsCustomizePagedView$ContentType;Z)V

    goto/16 :goto_2

    .line 1652
    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 1675
    .restart local v1    # "i":I
    .restart local v6    # "startTimeCallbacks":J
    :cond_14
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1674
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 1688
    .end local v6    # "startTimeCallbacks":J
    :cond_15
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1687
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 1604
    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data

    .line 1606
    :array_1
    .array-data 4
        0x0
        0x32
        0x4
        0x3c
        0x65
        0x1f
    .end array-data

    .line 1612
    :array_2
    .array-data 4
        0x2
        0x3
    .end array-data

    .line 1615
    :array_3
    .array-data 4
        0x3e8
        0x409
    .end array-data

    .line 1617
    :array_4
    .array-data 4
        0x0
        0x32
        0x3c
        0x4
        0x65
        0x1f
    .end array-data

    .line 1622
    :array_5
    .array-data 4
        0x3e8
        0x409
    .end array-data
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 2675
    sget-object v1, Lcom/android/launcher4/Launcher;->mModel:Lcom/android/launcher4/LauncherModel;

    iget-boolean v1, v1, Lcom/android/launcher4/LauncherModel;->mFirstUse:Z

    if-eqz v1, :cond_2

    const v0, 0x493e0

    .line 2676
    .local v0, "delay":I
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 2677
    sget-object v1, Lcom/android/launcher4/Launcher;->mModel:Lcom/android/launcher4/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherModel;->stopLoader()V

    .line 2680
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    if-eqz v1, :cond_1

    .line 2681
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher4/AppsCustomizePagedView;->surrender()V

    .line 2683
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    .line 2675
    .end local v0    # "delay":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, -0x1

    .line 5398
    sget-object v2, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 5399
    const-string v2, "launcher.current_screen"

    .line 5400
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher4/Workspace;->getRestorePage()I

    move-result v3

    .line 5399
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5402
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5404
    const-string v2, "launcher.state"

    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mState:Lcom/android/launcher4/Launcher$State;

    invoke-virtual {v3}, Lcom/android/launcher4/Launcher$State;->ordinal()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5408
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->closeFolder()V

    .line 5410
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher4/ItemInfo;->container:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 5411
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher4/ItemInfo;->screenId:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/launcher4/Launcher;->mWaitingForResult:Z

    if-eqz v2, :cond_1

    .line 5412
    const-string v2, "launcher.add_container"

    .line 5413
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget-wide v4, v3, Lcom/android/launcher4/ItemInfo;->container:J

    .line 5412
    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5414
    const-string v2, "launcher.add_screen"

    .line 5415
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget-wide v4, v3, Lcom/android/launcher4/ItemInfo;->screenId:J

    .line 5414
    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5416
    const-string v2, "launcher.add_cell_x"

    .line 5417
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget v3, v3, Lcom/android/launcher4/ItemInfo;->cellX:I

    .line 5416
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5418
    const-string v2, "launcher.add_cell_y"

    .line 5419
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget v3, v3, Lcom/android/launcher4/ItemInfo;->cellY:I

    .line 5418
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5420
    const-string v2, "launcher.add_span_x"

    .line 5421
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget v3, v3, Lcom/android/launcher4/ItemInfo;->spanX:I

    .line 5420
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5422
    const-string v2, "launcher.add_span_y"

    .line 5423
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iget v3, v3, Lcom/android/launcher4/ItemInfo;->spanY:I

    .line 5422
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5424
    const-string v2, "launcher.add_widget_info"

    .line 5425
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 5424
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5428
    :cond_1
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mFolderInfo:Lcom/android/launcher4/FolderInfo;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/launcher4/Launcher;->mWaitingForResult:Z

    if-eqz v2, :cond_2

    .line 5429
    const-string v2, "launcher.rename_folder"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5430
    const-string v2, "launcher.rename_folder_id"

    .line 5431
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mFolderInfo:Lcom/android/launcher4/FolderInfo;

    iget-wide v4, v3, Lcom/android/launcher4/FolderInfo;->id:J

    .line 5430
    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5435
    :cond_2
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher4/AppsCustomizeTabHost;

    if-eqz v2, :cond_4

    .line 5436
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-virtual {v2}, Lcom/android/launcher4/AppsCustomizeTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 5437
    .local v1, "currentTabTag":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 5438
    const-string v2, "apps_customize_currentTab"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5440
    :cond_3
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeContent:Lcom/android/launcher4/AppsCustomizePagedView;

    .line 5441
    invoke-virtual {v2}, Lcom/android/launcher4/AppsCustomizePagedView;->getSaveInstanceStateIndex()I

    move-result v0

    .line 5442
    .local v0, "currentIndex":I
    const-string v2, "apps_customize_currentIndex"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5444
    .end local v0    # "currentIndex":I
    .end local v1    # "currentTabTag":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5600
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/android/launcher4/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 5602
    return v1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 1554
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1556
    invoke-static {}, Lcom/syu/util/WindowUtil;->initDefaultApp()V

    .line 1557
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher4/FirstFrameAnimatorHelper;->setIsVisible(Z)V

    .line 1558
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1546
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1547
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->pipViews:Landroid/view/View;

    invoke-static {v0}, Lcom/syu/util/WindowUtil;->removePip(Landroid/view/View;)V

    .line 1548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/Launcher;->isfirstlayout:Z

    .line 1549
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher4/FirstFrameAnimatorHelper;->setIsVisible(Z)V

    .line 1550
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6279
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchDownAllAppsButton(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 6338
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 6339
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 7573
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 7574
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 7575
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher4/AppsCustomizeTabHost;->onTrimMemory()V

    .line 7577
    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 949
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 950
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher4/Launcher;->sPausedFromUserAction:Z

    .line 951
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 2689
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2690
    iput-boolean p1, p0, Lcom/android/launcher4/Launcher;->mHasFocus:Z

    .line 2693
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 5172
    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher4/Launcher;->mVisible:Z

    .line 5173
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->updateRunning()V

    .line 5179
    iget-boolean v1, p0, Lcom/android/launcher4/Launcher;->mVisible:Z

    if-eqz v1, :cond_1

    .line 5180
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-virtual {v1}, Lcom/android/launcher4/AppsCustomizeTabHost;->onWindowVisible()V

    .line 5181
    iget-boolean v1, p0, Lcom/android/launcher4/Launcher;->mWorkspaceLoading:Z

    if-nez v1, :cond_0

    .line 5182
    sget-object v1, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    .line 5183
    invoke-virtual {v1}, Lcom/android/launcher4/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 5189
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/launcher4/Launcher$75;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$75;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 5222
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->clearTypedText()V

    .line 5224
    :cond_1
    return-void

    .line 5172
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onWorkspaceShown(Z)V
    .locals 0
    .param p1, "animated"    # Z

    .prologue
    .line 7645
    return-void
.end method

.method public openFolder(Lcom/android/launcher4/FolderIcon;)V
    .locals 5
    .param p1, "folderIcon"    # Lcom/android/launcher4/FolderIcon;

    .prologue
    .line 6987
    invoke-virtual {p1}, Lcom/android/launcher4/FolderIcon;->getFolder()Lcom/android/launcher4/Folder;

    move-result-object v0

    .line 6988
    .local v0, "folder":Lcom/android/launcher4/Folder;
    iget-object v1, v0, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    .line 6990
    .local v1, "info":Lcom/android/launcher4/FolderInfo;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher4/FolderInfo;->opened:Z

    .line 6995
    invoke-virtual {v0}, Lcom/android/launcher4/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 6996
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mDragLayer:Lcom/android/launcher4/DragLayer;

    invoke-virtual {v2, v0}, Lcom/android/launcher4/DragLayer;->addView(Landroid/view/View;)V

    .line 6997
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mDragController:Lcom/android/launcher4/DragController;

    invoke-virtual {v2, v0}, Lcom/android/launcher4/DragController;->addDropTarget(Lcom/android/launcher4/DropTarget;)V

    .line 7003
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher4/Folder;->animateOpen()V

    .line 7004
    invoke-direct {p0, p1}, Lcom/android/launcher4/Launcher;->growAndFadeOutFolderIcon(Lcom/android/launcher4/FolderIcon;)V

    .line 7009
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/android/launcher4/Folder;->sendAccessibilityEvent(I)V

    .line 7010
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v2

    .line 7011
    const/16 v3, 0x800

    .line 7010
    invoke-virtual {v2, v3}, Lcom/android/launcher4/DragLayer;->sendAccessibilityEvent(I)V

    .line 7012
    return-void

    .line 6999
    :cond_0
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Opening folder ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 7000
    const-string v4, ") which already has a parent ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/launcher4/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 7001
    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6999
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public performHapticFeedbackOnTouchDown(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 6344
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 6345
    return-void
.end method

.method processShortcut(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5747
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 5748
    const v5, 0x7f0c001b

    .line 5747
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5749
    .local v0, "applicationName":Ljava/lang/String;
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5751
    .local v3, "shortcutName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5752
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5753
    .local v1, "mainIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5755
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5756
    .local v2, "pickIntent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5757
    const-string v4, "android.intent.extra.TITLE"

    .line 5758
    const v5, 0x7f0c0026

    invoke-virtual {p0, v5}, Lcom/android/launcher4/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 5757
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 5760
    const/4 v4, 0x6

    .line 5759
    invoke-static {p0, v2, v4}, Lcom/android/launcher4/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 5765
    .end local v1    # "mainIntent":Landroid/content/Intent;
    .end local v2    # "pickIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 5763
    :cond_0
    const/4 v4, 0x1

    .line 5762
    invoke-static {p0, p1, v4}, Lcom/android/launcher4/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method processShortcutFromDrop(Landroid/content/ComponentName;JJ[I[I)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cell"    # [I
    .param p7, "loc"    # [I

    .prologue
    .line 5660
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->resetAddInfo()V

    .line 5661
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iput-wide p2, v1, Lcom/android/launcher4/ItemInfo;->container:J

    .line 5662
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iput-wide p4, v1, Lcom/android/launcher4/ItemInfo;->screenId:J

    .line 5663
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    iput-object p7, v1, Lcom/android/launcher4/ItemInfo;->dropPos:[I

    .line 5665
    if-eqz p6, :cond_0

    .line 5666
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    const/4 v2, 0x0

    aget v2, p6, v2

    iput v2, v1, Lcom/android/launcher4/ItemInfo;->cellX:I

    .line 5667
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mPendingAddInfo:Lcom/android/launcher4/ItemInfo;

    const/4 v2, 0x1

    aget v2, p6, v2

    iput v2, v1, Lcom/android/launcher4/ItemInfo;->cellY:I

    .line 5670
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5671
    .local v0, "createShortcutIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5672
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Launcher;->processShortcut(Landroid/content/Intent;)V

    .line 5673
    return-void
.end method

.method processWallpaper(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5768
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher4/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5769
    return-void
.end method

.method public removeAppWidget(Lcom/android/launcher4/LauncherAppWidgetInfo;)V
    .locals 1
    .param p1, "launcherInfo"    # Lcom/android/launcher4/LauncherAppWidgetInfo;

    .prologue
    .line 5299
    iget-object v0, p1, Lcom/android/launcher4/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Launcher;->removeWidgetToAutoAdvance(Landroid/view/View;)V

    .line 5300
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher4/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 5301
    return-void
.end method

.method removeFolder(Lcom/android/launcher4/FolderInfo;)V
    .locals 4
    .param p1, "folder"    # Lcom/android/launcher4/FolderInfo;

    .prologue
    .line 5793
    sget-object v0, Lcom/android/launcher4/Launcher;->sFolders:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/launcher4/FolderInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5794
    return-void
.end method

.method removeWidgetToAutoAdvance(Landroid/view/View;)V
    .locals 1
    .param p1, "hostView"    # Landroid/view/View;

    .prologue
    .line 5292
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5293
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5294
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->updateRunning()V

    .line 5296
    :cond_0
    return-void
.end method

.method public resetQSBScroll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2636
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    invoke-virtual {v0}, Lcom/android/launcher4/SearchDropTargetBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2637
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getQsbBar()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2638
    return-void
.end method

.method public setButtonVisible(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 5842
    sget-object v0, Lcom/android/launcher4/Launcher;->widgetButton:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher4/Launcher;->wallpaperButton:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher4/Launcher;->liveWallPaperButton:Landroid/view/View;

    if-nez v0, :cond_1

    .line 5843
    :cond_0
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v0

    iget v0, v0, Lshare/ResValue;->widget_button:I

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/android/launcher4/Launcher;->widgetButton:Landroid/view/View;

    .line 5844
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v0

    iget v0, v0, Lshare/ResValue;->wallpaper_button:I

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/android/launcher4/Launcher;->wallpaperButton:Landroid/view/View;

    .line 5845
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v0

    iget v0, v0, Lshare/ResValue;->livewallpaper_button:I

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/android/launcher4/Launcher;->liveWallPaperButton:Landroid/view/View;

    .line 5848
    :cond_1
    if-eqz p1, :cond_3

    .line 5849
    sget-object v0, Lcom/android/launcher4/Launcher;->widgetButton:Landroid/view/View;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5851
    sget-object v0, Lcom/android/launcher4/Launcher;->widgetButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5853
    :cond_2
    sget-object v0, Lcom/android/launcher4/Launcher;->wallpaperButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5854
    sget-object v0, Lcom/android/launcher4/Launcher;->liveWallPaperButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5863
    :goto_0
    return-void

    .line 5856
    :cond_3
    sget-object v0, Lcom/android/launcher4/Launcher;->widgetButton:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 5858
    sget-object v0, Lcom/android/launcher4/Launcher;->widgetButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5860
    :cond_4
    sget-object v0, Lcom/android/launcher4/Launcher;->wallpaperButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5861
    sget-object v0, Lcom/android/launcher4/Launcher;->liveWallPaperButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDefaultWallpaper()V
    .locals 3

    .prologue
    .line 9176
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 9178
    .local v1, "wm":Landroid/app/WallpaperManager;
    :try_start_0
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->def_bg:I

    if-eqz v2, :cond_1

    .line 9179
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->def_bg:I

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->setResource(I)V

    .line 9188
    :cond_0
    :goto_0
    return-void

    .line 9180
    :cond_1
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->fyt_home_bk_00:I

    if-eqz v2, :cond_2

    .line 9181
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->fyt_home_bk_00:I

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9185
    :catch_0
    move-exception v0

    .line 9186
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 9182
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->fyt_home_bk_01:I

    if-eqz v2, :cond_0

    .line 9183
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->fyt_home_bk_01:I

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setLoadOnResume()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 8193
    iget-boolean v1, p0, Lcom/android/launcher4/Launcher;->mPaused:Z

    if-eqz v1, :cond_0

    .line 8194
    const-string v1, "Launcher"

    const-string v2, "setLoadOnResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8195
    iput-boolean v0, p0, Lcom/android/launcher4/Launcher;->mOnResumeNeedsLoad:Z

    .line 8198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method showAllApps(ZLcom/android/launcher4/AppsCustomizePagedView$ContentType;Z)V
    .locals 3
    .param p1, "animated"    # Z
    .param p2, "contentType"    # Lcom/android/launcher4/AppsCustomizePagedView$ContentType;
    .param p3, "resetPageToZero"    # Z

    .prologue
    const/4 v2, 0x0

    .line 7650
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mState:Lcom/android/launcher4/Launcher$State;

    sget-object v1, Lcom/android/launcher4/Launcher$State;->WORKSPACE:Lcom/android/launcher4/Launcher$State;

    if-eq v0, v1, :cond_0

    .line 7679
    :goto_0
    return-void

    .line 7653
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->pipViews:Landroid/view/View;

    invoke-static {v0}, Lcom/syu/util/WindowUtil;->removePip(Landroid/view/View;)V

    .line 7655
    if-eqz p3, :cond_1

    .line 7656
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher4/AppsCustomizeTabHost;->reset()V

    .line 7658
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Launcher;->hideHotseat(Z)V

    .line 7659
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 7660
    const v1, 0x7f0a0016

    .line 7659
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 7660
    if-nez v0, :cond_2

    .line 7661
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mAllAppsButton:Landroid/view/View;

    .line 7662
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->all_apps1_btn_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7665
    :cond_2
    invoke-direct {p0, p1, v2, p2}, Lcom/android/launcher4/Launcher;->showAppsCustomizeHelper(ZZLcom/android/launcher4/AppsCustomizePagedView$ContentType;)V

    .line 7666
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher4/AppsCustomizeTabHost;->requestFocus()Z

    .line 7669
    sget-object v0, Lcom/android/launcher4/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher4/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->mState:Lcom/android/launcher4/Launcher$State;

    .line 7672
    iput-boolean v2, p0, Lcom/android/launcher4/Launcher;->mUserPresent:Z

    .line 7673
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->updateRunning()V

    .line 7674
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->closeFolder()V

    .line 7677
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 7678
    const/16 v1, 0x20

    .line 7677
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public showClickappCling()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 9140
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->clickapp_cling:I

    if-gtz v1, :cond_0

    .line 9153
    :goto_0
    return-void

    .line 9143
    :cond_0
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->clickapp_cling:I

    .line 9144
    const/4 v2, 0x1

    .line 9143
    invoke-direct {p0, v1, v3, v3, v2}, Lcom/android/launcher4/Launcher;->initCling(IIZZ)Lcom/android/launcher4/Cling;

    move-result-object v0

    .line 9147
    .local v0, "c":Lcom/android/launcher4/Cling;
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getFirstRunFocusedHotseatAppDrawableId()I

    move-result v1

    .line 9148
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getFirstRunFocusedHotseatAppRank()I

    move-result v2

    .line 9149
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getFirstRunFocusedHotseatAppComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 9150
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getFirstRunFocusedHotseatAppBubbleTitle()Ljava/lang/String;

    move-result-object v4

    .line 9151
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getFirstRunFocusedHotseatAppBubbleDescription()Ljava/lang/String;

    move-result-object v5

    .line 9147
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher4/Cling;->setFocusedHotseatApp(IILandroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showFirstRunCling()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const v7, 0x7f11006f

    const/4 v6, 0x0

    .line 9062
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->isClingsEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9063
    iget-object v4, p0, Lcom/android/launcher4/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 9064
    const-string v5, "cling_gel.first_run.dismissed"

    .line 9063
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 9064
    if-nez v4, :cond_3

    .line 9065
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->skipCustomClingIfNoAccounts()Z

    move-result v4

    if-nez v4, :cond_3

    .line 9066
    sget-object v4, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 9067
    const v5, 0x7f0a0023

    .line 9066
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 9067
    if-eqz v4, :cond_0

    .line 9069
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->setDefaultWallpaper()V

    .line 9092
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/Cling;

    .line 9093
    .local v1, "cling":Lcom/android/launcher4/Cling;
    if-eqz v1, :cond_2

    .line 9094
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getFirstRunClingSearchBarHint()Ljava/lang/String;

    move-result-object v3

    .line 9095
    .local v3, "sbHintStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getFirstRunCustomContentHint()Ljava/lang/String;

    move-result-object v0

    .line 9096
    .local v0, "ccHintStr":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 9098
    const v4, 0x7f11004b

    invoke-virtual {v1, v4}, Lcom/android/launcher4/Cling;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 9099
    .local v2, "sbHint":Landroid/widget/TextView;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9100
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9102
    .end local v2    # "sbHint":Landroid/widget/TextView;
    :cond_1
    invoke-direct {p0, v1, v0, v8, v6}, Lcom/android/launcher4/Launcher;->setCustomContentHintVisibility(Lcom/android/launcher4/Cling;Ljava/lang/String;ZZ)V

    .line 9104
    .end local v0    # "ccHintStr":Ljava/lang/String;
    .end local v3    # "sbHintStr":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v7, v6, v6, v8}, Lcom/android/launcher4/Launcher;->initCling(IIZZ)Lcom/android/launcher4/Cling;

    .line 9108
    .end local v1    # "cling":Lcom/android/launcher4/Cling;
    :goto_0
    return-void

    .line 9106
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/launcher4/Launcher;->removeCling(I)V

    goto :goto_0
.end method

.method public showFirstRunFoldersCling()Lcom/android/launcher4/Cling;
    .locals 6

    .prologue
    const v5, 0x7f110071

    const/4 v4, 0x1

    .line 9191
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->isClingsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9192
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "cling_gel.folder.dismissed"

    .line 9193
    const/4 v3, 0x0

    .line 9192
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 9193
    if-nez v1, :cond_0

    .line 9194
    const v1, 0x7f11006e

    invoke-direct {p0, v5, v1, v4, v4}, Lcom/android/launcher4/Launcher;->initCling(IIZZ)Lcom/android/launcher4/Cling;

    move-result-object v0

    .line 9199
    :goto_0
    return-object v0

    .line 9198
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/launcher4/Launcher;->removeCling(I)V

    .line 9199
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showFirstRunWorkspaceCling()V
    .locals 6

    .prologue
    const v4, 0x7f110070

    const/4 v3, 0x0

    .line 9158
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->isClingsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9159
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 9160
    const-string v2, "cling_gel.workspace.dismissed"

    .line 9159
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 9160
    if-nez v1, :cond_0

    .line 9161
    const/4 v1, 0x1

    invoke-direct {p0, v4, v3, v3, v1}, Lcom/android/launcher4/Launcher;->initCling(IIZZ)Lcom/android/launcher4/Cling;

    move-result-object v0

    .line 9164
    .local v0, "c":Lcom/android/launcher4/Cling;
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getFirstRunFocusedHotseatAppDrawableId()I

    move-result v1

    .line 9165
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getFirstRunFocusedHotseatAppRank()I

    move-result v2

    .line 9166
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getFirstRunFocusedHotseatAppComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 9167
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getFirstRunFocusedHotseatAppBubbleTitle()Ljava/lang/String;

    move-result-object v4

    .line 9168
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getFirstRunFocusedHotseatAppBubbleDescription()Ljava/lang/String;

    move-result-object v5

    .line 9164
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher4/Cling;->setFocusedHotseatApp(IILandroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 9172
    .end local v0    # "c":Lcom/android/launcher4/Cling;
    :goto_0
    return-void

    .line 9170
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/launcher4/Launcher;->removeCling(I)V

    goto :goto_0
.end method

.method showHotseat(Z)V
    .locals 6
    .param p1, "animated"    # Z

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 7735
    sget-object v1, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 7736
    const v2, 0x7f0a0016

    .line 7735
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 7736
    if-nez v1, :cond_1

    .line 7759
    :cond_0
    :goto_0
    return-void

    .line 7740
    :cond_1
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherAppState;->isScreenLarge()Z

    move-result v1

    if-nez v1, :cond_3

    .line 7741
    if-eqz p1, :cond_5

    .line 7743
    const/4 v0, 0x0

    .line 7744
    .local v0, "duration":I
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    if-eqz v1, :cond_2

    .line 7745
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    invoke-virtual {v1}, Lcom/android/launcher4/SearchDropTargetBar;->getTransitionInDuration()I

    move-result v0

    .line 7747
    :cond_2
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 7749
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 7754
    .end local v0    # "duration":I
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_4

    .line 7755
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 7756
    :cond_4
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 7757
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 7751
    :cond_5
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method showOutOfSpaceMessage(Z)V
    .locals 3
    .param p1, "isHotseatLayout"    # Z

    .prologue
    .line 5304
    if-eqz p1, :cond_0

    const v0, 0x7f0c0020

    .line 5306
    .local v0, "strId":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5307
    return-void

    .line 5305
    .end local v0    # "strId":I
    :cond_0
    const v0, 0x7f0c001f

    goto :goto_0
.end method

.method showOverviewMode(Z)V
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    const/4 v2, 0x0

    .line 7637
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher4/Workspace;->setVisibility(I)V

    .line 7638
    sget-object v0, Lcom/android/launcher4/Workspace$State;->OVERVIEW:Lcom/android/launcher4/Workspace$State;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/android/launcher4/Launcher;->hideAppsCustomizeHelper(Lcom/android/launcher4/Workspace$State;ZZLjava/lang/Runnable;)V

    .line 7639
    sget-object v0, Lcom/android/launcher4/Launcher$State;->WORKSPACE:Lcom/android/launcher4/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher4/Launcher;->mState:Lcom/android/launcher4/Launcher$State;

    .line 7640
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Launcher;->onWorkspaceShown(Z)V

    .line 7641
    return-void
.end method

.method public showWeatherInfo()V
    .locals 3

    .prologue
    .line 859
    const-string v0, "hy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showWeatherInfo"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher4/Launcher;->manager:Lcom/syu/weather/WeatherManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->manager:Lcom/syu/weather/WeatherManager;

    if-nez v0, :cond_0

    .line 893
    :goto_0
    return-void

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->manager:Lcom/syu/weather/WeatherManager;

    new-instance v1, Lcom/android/launcher4/Launcher$19;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$19;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/syu/weather/WeatherManager;->addOnWeatherChangedListener(Lcom/syu/weather/WeatherManager$OnWeatherChangedListener;)V

    goto :goto_0
.end method

.method protected showWorkspace()V
    .locals 1

    .prologue
    .line 7586
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Launcher;->showWorkspace(Z)V

    .line 7587
    return-void
.end method

.method protected showWorkspace(Z)V
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    const/4 v1, 0x1

    .line 7580
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher4/Launcher;->showWorkspace(ZLjava/lang/Runnable;)V

    .line 7581
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Launcher;->showHotseat(Z)V

    .line 7582
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Launcher;->updateWallpaperVisibility(Z)V

    .line 7583
    return-void
.end method

.method showWorkspace(ZLjava/lang/Runnable;)V
    .locals 5
    .param p1, "animated"    # Z
    .param p2, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7590
    const-string v3, "showWorkspace----->startMapPip"

    invoke-static {v3}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 7591
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->pipViews:Landroid/view/View;

    invoke-static {v3}, Lcom/syu/util/WindowUtil;->startMapPip(Landroid/view/View;)V

    .line 7593
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher4/Workspace;->isInOverviewMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7594
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v3, p1}, Lcom/android/launcher4/Workspace;->exitOverviewMode(Z)V

    .line 7596
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Launcher;->showHotseat(Z)V

    .line 7597
    sget-object v3, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 7598
    const v4, 0x7f0a0016

    .line 7597
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 7598
    if-nez v3, :cond_1

    .line 7599
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mAllAppsButton:Landroid/view/View;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->all_apps_btn_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7602
    :cond_1
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mState:Lcom/android/launcher4/Launcher$State;

    sget-object v4, Lcom/android/launcher4/Launcher$State;->WORKSPACE:Lcom/android/launcher4/Launcher$State;

    if-eq v3, v4, :cond_4

    .line 7603
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mState:Lcom/android/launcher4/Launcher$State;

    sget-object v4, Lcom/android/launcher4/Launcher$State;->WORKSPACE:Lcom/android/launcher4/Launcher$State;

    if-eq v3, v4, :cond_5

    move v0, v1

    .line 7604
    .local v0, "wasInSpringLoadedMode":Z
    :goto_0
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher4/Workspace;->setVisibility(I)V

    .line 7605
    sget-object v3, Lcom/android/launcher4/Workspace$State;->NORMAL:Lcom/android/launcher4/Workspace$State;

    invoke-direct {p0, v3, v2, v2, p2}, Lcom/android/launcher4/Launcher;->hideAppsCustomizeHelper(Lcom/android/launcher4/Workspace$State;ZZLjava/lang/Runnable;)V

    .line 7611
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    if-eqz v3, :cond_3

    .line 7612
    iget-object v3, p0, Lcom/android/launcher4/Launcher;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    if-eqz p1, :cond_2

    .line 7613
    if-eqz v0, :cond_2

    move v2, v1

    .line 7612
    :cond_2
    invoke-virtual {v3, v2}, Lcom/android/launcher4/SearchDropTargetBar;->showSearchBar(Z)V

    .line 7617
    :cond_3
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mAllAppsButton:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 7618
    iget-object v2, p0, Lcom/android/launcher4/Launcher;->mAllAppsButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 7623
    .end local v0    # "wasInSpringLoadedMode":Z
    :cond_4
    sget-object v2, Lcom/android/launcher4/Launcher$State;->WORKSPACE:Lcom/android/launcher4/Launcher$State;

    iput-object v2, p0, Lcom/android/launcher4/Launcher;->mState:Lcom/android/launcher4/Launcher$State;

    .line 7626
    iput-boolean v1, p0, Lcom/android/launcher4/Launcher;->mUserPresent:Z

    .line 7627
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->updateRunning()V

    .line 7630
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 7631
    const/16 v2, 0x20

    .line 7630
    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 7633
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Launcher;->onWorkspaceShown(Z)V

    .line 7634
    return-void

    :cond_5
    move v0, v2

    .line 7603
    goto :goto_0
.end method

.method start(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    .line 6805
    const/4 v1, 0x0

    .line 6807
    .local v1, "success2":Z
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher4/Launcher;->startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 6813
    :goto_0
    return v1

    .line 6808
    :catch_0
    move-exception v0

    .line 6809
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const v2, 0x7f0c000c

    .line 6810
    const/4 v3, 0x0

    .line 6809
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 6810
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 6811
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to launch. tag="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6422
    const/high16 v5, 0x10000000

    invoke-virtual {p2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6429
    if-eqz p1, :cond_0

    .line 6430
    :try_start_0
    const-string v5, "com.android.launcher4.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v2, v4

    .line 6431
    .local v2, "useLaunchAnimation":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 6433
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 6432
    invoke-static {p1, v5, v6, v7, v8}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 6435
    .local v1, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p0, p2, v5}, Lcom/android/launcher4/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .end local v1    # "opts":Landroid/app/ActivityOptions;
    :goto_1
    move v3, v4

    .line 6450
    .end local v2    # "useLaunchAnimation":Z
    :goto_2
    return v3

    :cond_0
    move v2, v3

    .line 6429
    goto :goto_0

    .line 6437
    .restart local v2    # "useLaunchAnimation":Z
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/launcher4/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6440
    .end local v2    # "useLaunchAnimation":Z
    :catch_0
    move-exception v0

    .line 6441
    .local v0, "e":Ljava/lang/SecurityException;
    const v4, 0x7f0c000c

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 6442
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 6443
    const-string v4, "Launcher"

    .line 6444
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Launcher does not have the permission to launch "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6445
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6446
    const-string v6, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6447
    const-string v6, "or use the exported attribute for this activity. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6448
    const-string v6, "tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6444
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6443
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 5507
    if-ltz p2, :cond_0

    .line 5508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/Launcher;->mWaitingForResult:Z

    .line 5509
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5510
    return-void
.end method

.method startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 28
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    .line 6475
    const-string v23, "hy"

    .line 6476
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "intent"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "intentgetComponent"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 6477
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 6476
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 6475
    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6478
    if-nez p2, :cond_0

    .line 6480
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    .line 6481
    const v24, 0x7f0c000c

    const/16 v25, 0x1

    .line 6480
    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v23

    .line 6481
    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 6483
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher4/Launcher;->success:Z

    move/from16 v23, v0

    .line 6784
    :goto_0
    return v23

    .line 6485
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    if-nez v23, :cond_2

    .line 6486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    move-object/from16 v23, v0

    const-string v24, "WS_Dvr"

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 6487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->customView:Ljava/util/HashMap;

    move-object/from16 v23, v0

    const-string v24, "Dvr"

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 6488
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    .line 6489
    const v24, 0x7f0c009b

    const/16 v25, 0x1

    .line 6488
    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v23

    .line 6489
    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 6490
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher4/Launcher;->success:Z

    move/from16 v23, v0

    goto :goto_0

    .line 6494
    :cond_2
    const-string v23, "hy"

    const-string v24, "startActivitySafely"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6495
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    if-eqz v23, :cond_4

    .line 6496
    const-string v23, "net.easyconn"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    .line 6497
    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    .line 6496
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    .line 6497
    if-eqz v23, :cond_6

    .line 6498
    const-string v23, "sys.bdcl.enable"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 6499
    const-string v23, "service.adbec.enable"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 6500
    const-string v24, "1"

    .line 6499
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    .line 6500
    if-eqz v23, :cond_3

    .line 6502
    invoke-virtual/range {p0 .. p3}, Lcom/android/launcher4/Launcher;->start(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher4/Launcher;->success:Z

    goto/16 :goto_0

    .line 6504
    :cond_3
    const-string v23, "com.baidu.carlifevehicle"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/launcher4/Launcher;->testRemoveTask(Ljava/lang/String;)V

    .line 6505
    const-string v23, "sys.bdcl.enable"

    const-string v24, "0"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->handler:Landroid/os/Handler;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/launcher4/Launcher$77;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher4/Launcher$77;-><init>(Lcom/android/launcher4/Launcher;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 6516
    const-wide/16 v26, 0x1f4

    .line 6506
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6517
    const-string v23, "service.adbec.enable"

    const-string v24, "1"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6546
    :cond_4
    :goto_1
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lshare/ResValue;->clingtitletext:I

    move/from16 v23, v0

    .line 6545
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 6547
    .local v19, "clingTitleText":Landroid/widget/TextView;
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lshare/ResValue;->clingtext:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 6549
    .local v18, "clingText":Landroid/widget/TextView;
    const-string v23, "ro.client.foreign"

    const-string v24, "false"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 6550
    .local v22, "str1":Ljava/lang/String;
    const-string v23, "true"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lshare/ResValue;->clickapp_cling:I

    move/from16 v23, v0

    if-lez v23, :cond_5

    .line 6551
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    if-eqz v23, :cond_5

    sget-boolean v23, Lshare/Config;->EXISTVOICE:Z

    if-eqz v23, :cond_5

    .line 6552
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher4/Launcher;->closePop:Z

    move/from16 v23, v0

    if-nez v23, :cond_8

    .line 6553
    :cond_5
    invoke-virtual/range {p0 .. p3}, Lcom/android/launcher4/Launcher;->start(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher4/Launcher;->success:Z

    .line 6784
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher4/Launcher;->success:Z

    move/from16 v23, v0

    goto/16 :goto_0

    .line 6518
    .end local v18    # "clingText":Landroid/widget/TextView;
    .end local v19    # "clingTitleText":Landroid/widget/TextView;
    .end local v22    # "str1":Ljava/lang/String;
    :cond_6
    const-string v23, "com.baidu.carlifevehicle"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    .line 6519
    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    .line 6518
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    .line 6519
    if-eqz v23, :cond_4

    .line 6520
    const-string v23, "sys.bdcl.enable"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "1"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 6521
    const-string v23, "service.adbec.enable"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 6522
    const-string v24, "0"

    .line 6521
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    .line 6522
    if-eqz v23, :cond_7

    .line 6523
    invoke-virtual/range {p0 .. p3}, Lcom/android/launcher4/Launcher;->start(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher4/Launcher;->success:Z

    goto/16 :goto_0

    .line 6525
    :cond_7
    const-string v23, "net.easyconn"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/launcher4/Launcher;->testRemoveTask(Ljava/lang/String;)V

    .line 6526
    const-string v23, "service.adbec.enable"

    const-string v24, "0"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->handler:Landroid/os/Handler;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/launcher4/Launcher$78;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher4/Launcher$78;-><init>(Lcom/android/launcher4/Launcher;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 6537
    const-wide/16 v26, 0x1f4

    .line 6527
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6538
    const-string v23, "sys.bdcl.enable"

    const-string v24, "1"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6556
    .restart local v18    # "clingText":Landroid/widget/TextView;
    .restart local v19    # "clingTitleText":Landroid/widget/TextView;
    .restart local v22    # "str1":Ljava/lang/String;
    :cond_8
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lshare/ResValue;->clickapp:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v23

    if-eqz v23, :cond_9

    .line 6557
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lshare/ResValue;->clickapp:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 6558
    new-instance v24, Lcom/android/launcher4/Launcher$79;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher4/Launcher$79;-><init>(Lcom/android/launcher4/Launcher;Landroid/content/Intent;Landroid/view/View;Ljava/lang/Object;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6582
    :cond_9
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lshare/ResValue;->clickapp_cancel:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 6583
    new-instance v24, Lcom/android/launcher4/Launcher$80;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher4/Launcher$80;-><init>(Lcom/android/launcher4/Launcher;Landroid/content/Intent;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6612
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    .line 6613
    const-string v24, "com.syu.music"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 6614
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "SystemProperties"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6615
    const-string v24, "persist.sys.clingmusic"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 6614
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 6616
    const-string v23, "persist.sys.clingmusic"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_a

    .line 6619
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->showClickappCling()V

    .line 6621
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    .line 6622
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 6623
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v24

    .line 6624
    const-string v25, "clingmusictitle"

    const-string v26, "string"

    .line 6623
    invoke-virtual/range {v24 .. v26}, Lshare/ResValue;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    .line 6622
    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 6625
    .local v13, "clingMusicTitle":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    .line 6626
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 6627
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v24

    .line 6628
    const-string v25, "clingmusictext"

    const-string v26, "string"

    .line 6627
    invoke-virtual/range {v24 .. v26}, Lshare/ResValue;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    .line 6626
    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 6630
    .local v12, "clingMusicText":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6631
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6632
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->wakeVoice(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6635
    .end local v12    # "clingMusicText":Ljava/lang/String;
    .end local v13    # "clingMusicTitle":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p0 .. p3}, Lcom/android/launcher4/Launcher;->start(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher4/Launcher;->success:Z

    goto/16 :goto_2

    .line 6638
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    .line 6639
    const-string v24, "com.syu.video"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 6640
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "SystemProperties"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6641
    const-string v24, "persist.fyt.clingvideo"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 6640
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 6642
    const-string v23, "persist.sys.clingvideo"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    .line 6644
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->showClickappCling()V

    .line 6645
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    .line 6646
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 6647
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v24

    .line 6648
    const-string v25, "clingvideotitle"

    const-string v26, "string"

    .line 6647
    invoke-virtual/range {v24 .. v26}, Lshare/ResValue;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    .line 6646
    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 6649
    .local v21, "clingVideoTitle":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    .line 6650
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 6651
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v24

    .line 6652
    const-string v25, "clingvideotext"

    const-string v26, "string"

    .line 6651
    invoke-virtual/range {v24 .. v26}, Lshare/ResValue;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    .line 6650
    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 6654
    .local v20, "clingVideoText":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6655
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6656
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->wakeVoice(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6659
    .end local v20    # "clingVideoText":Ljava/lang/String;
    .end local v21    # "clingVideoTitle":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p0 .. p3}, Lcom/android/launcher4/Launcher;->start(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher4/Launcher;->success:Z

    goto/16 :goto_2

    .line 6662
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    .line 6663
    const-string v24, "com.autonavi.amapauto"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 6665
    const-string v23, "persist.sys.clinggaode"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_e

    .line 6667
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->showClickappCling()V

    .line 6668
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    .line 6669
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 6670
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v24

    .line 6671
    const-string v25, "clingnavetitle"

    const-string v26, "string"

    .line 6670
    invoke-virtual/range {v24 .. v26}, Lshare/ResValue;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    .line 6669
    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 6672
    .local v15, "clingNaveTitle":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    .line 6673
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 6674
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v24

    .line 6675
    const-string v25, "clingnavetext"

    const-string v26, "string"

    .line 6674
    invoke-virtual/range {v24 .. v26}, Lshare/ResValue;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    .line 6673
    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 6677
    .local v14, "clingNaveText":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6678
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6679
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->wakeVoice(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6682
    .end local v14    # "clingNaveText":Ljava/lang/String;
    .end local v15    # "clingNaveTitle":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {p0 .. p3}, Lcom/android/launcher4/Launcher;->start(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher4/Launcher;->success:Z

    goto/16 :goto_2

    .line 6685
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    .line 6686
    const-string v24, "com.syu.radio"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 6688
    const-string v23, "persist.sys.clingradio"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_10

    .line 6690
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->showClickappCling()V

    .line 6691
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    .line 6692
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 6693
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v24

    .line 6694
    const-string v25, "clingradiotitle"

    const-string v26, "string"

    .line 6693
    invoke-virtual/range {v24 .. v26}, Lshare/ResValue;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    .line 6692
    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 6695
    .local v17, "clingRadioTitle":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    .line 6696
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 6697
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v24

    .line 6698
    const-string v25, "clingradiotext"

    const-string v26, "string"

    .line 6697
    invoke-virtual/range {v24 .. v26}, Lshare/ResValue;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    .line 6696
    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 6700
    .local v16, "clingRadioText":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6701
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6702
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->wakeVoice(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6705
    .end local v16    # "clingRadioText":Ljava/lang/String;
    .end local v17    # "clingRadioTitle":Ljava/lang/String;
    :cond_10
    invoke-virtual/range {p0 .. p3}, Lcom/android/launcher4/Launcher;->start(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher4/Launcher;->success:Z

    goto/16 :goto_2

    .line 6708
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    .line 6709
    const-string v24, "com.syu.bt"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 6711
    const-string v23, "persist.sys.clingbt"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_12

    .line 6713
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->showClickappCling()V

    .line 6714
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    .line 6715
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 6716
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v24

    .line 6717
    const-string v25, "clingbttitle"

    const-string v26, "string"

    .line 6716
    invoke-virtual/range {v24 .. v26}, Lshare/ResValue;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    .line 6715
    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 6718
    .local v7, "clingBtTitle":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 6720
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v24

    const-string v25, "clingbttext"

    .line 6721
    const-string v26, "string"

    .line 6720
    invoke-virtual/range {v24 .. v26}, Lshare/ResValue;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    .line 6719
    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 6723
    .local v6, "clingBtText":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6724
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6725
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->wakeVoice(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6728
    .end local v6    # "clingBtText":Ljava/lang/String;
    .end local v7    # "clingBtTitle":Ljava/lang/String;
    :cond_12
    invoke-virtual/range {p0 .. p3}, Lcom/android/launcher4/Launcher;->start(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher4/Launcher;->success:Z

    goto/16 :goto_2

    .line 6731
    :cond_13
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    .line 6732
    const-string v24, "cn.kuwo.kwmusiccar"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 6734
    const-string v23, "persist.sys.clingkuwo"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_14

    .line 6736
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->showClickappCling()V

    .line 6737
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    .line 6738
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 6739
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v24

    .line 6740
    const-string v25, "clingkuwotitle"

    const-string v26, "string"

    .line 6739
    invoke-virtual/range {v24 .. v26}, Lshare/ResValue;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    .line 6738
    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 6741
    .local v11, "clingKuwoTitle":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    .line 6742
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 6743
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v24

    .line 6744
    const-string v25, "clingkuwotext"

    const-string v26, "string"

    .line 6743
    invoke-virtual/range {v24 .. v26}, Lshare/ResValue;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    .line 6742
    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 6746
    .local v10, "clingKuwoText":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6747
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6748
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->wakeVoice(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6751
    .end local v10    # "clingKuwoText":Ljava/lang/String;
    .end local v11    # "clingKuwoTitle":Ljava/lang/String;
    :cond_14
    invoke-virtual/range {p0 .. p3}, Lcom/android/launcher4/Launcher;->start(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher4/Launcher;->success:Z

    goto/16 :goto_2

    .line 6754
    :cond_15
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    .line 6755
    const-string v24, "com.edog.car"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_17

    .line 6757
    const-string v23, "persist.sys.clingkaola"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_16

    .line 6759
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->showClickappCling()V

    .line 6760
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    .line 6761
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 6762
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v24

    .line 6763
    const-string v25, "clingkaolatitle"

    const-string v26, "string"

    .line 6762
    invoke-virtual/range {v24 .. v26}, Lshare/ResValue;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    .line 6761
    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 6764
    .local v9, "clingKaoLaTitle":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    .line 6765
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 6766
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v24

    .line 6767
    const-string v25, "clingkaolatext"

    const-string v26, "string"

    .line 6766
    invoke-virtual/range {v24 .. v26}, Lshare/ResValue;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    .line 6765
    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 6769
    .local v8, "clingKaoLaText":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6770
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6771
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->wakeVoice(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6774
    .end local v8    # "clingKaoLaText":Ljava/lang/String;
    .end local v9    # "clingKaoLaTitle":Ljava/lang/String;
    :cond_16
    invoke-virtual/range {p0 .. p3}, Lcom/android/launcher4/Launcher;->start(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher4/Launcher;->success:Z

    goto/16 :goto_2

    .line 6779
    :cond_17
    invoke-virtual/range {p0 .. p3}, Lcom/android/launcher4/Launcher;->start(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher4/Launcher;->success:Z

    goto/16 :goto_2
.end method

.method startApplicationDetailsActivity(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 6390
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 6391
    .local v1, "packageName":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    .line 6392
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 6393
    const-string v3, "package"

    .line 6392
    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 6391
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6394
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6396
    const-string v2, "startApplicationDetailsActivity"

    invoke-virtual {p0, v4, v0, v2}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 6397
    return-void
.end method

.method startApplicationUninstallActivity(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 6402
    and-int/lit8 v5, p2, 0x1

    if-nez v5, :cond_0

    .line 6406
    const v2, 0x7f0c0043

    .line 6407
    .local v2, "messageId":I
    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 6417
    .end local v2    # "messageId":I
    :goto_0
    return v4

    .line 6410
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 6411
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 6412
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DELETE"

    .line 6413
    const-string v5, "package"

    .line 6412
    invoke-static {v5, v3, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6414
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10800000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6416
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 6417
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public startBinding()V
    .locals 1

    .prologue
    .line 8224
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8227
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->clearDropTargets()V

    .line 8228
    sget-object v0, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->removeAllWorkspaceScreens()V

    .line 8230
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 8231
    return-void
.end method

.method protected startLiveWallpaper()V
    .locals 3

    .prologue
    .line 4845
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4846
    .local v0, "pickWallpaper":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getWallpaperPickerComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4847
    const-string v1, "live_wallpaper"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4848
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher4/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4849
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "sourceBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 5541
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher4/Launcher;->startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V

    .line 5543
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 3
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "globalSearch"    # Z

    .prologue
    .line 5520
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher4/Launcher;->showWorkspace(Z)V

    .line 5522
    if-nez p1, :cond_0

    .line 5524
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    .line 5526
    :cond_0
    if-nez p3, :cond_1

    .line 5527
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "appSearchData":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 5528
    .restart local p3    # "appSearchData":Landroid/os/Bundle;
    const-string v1, "source"

    const-string v2, "launcher-search"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5530
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 5531
    .local v0, "sourceBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    if-eqz v1, :cond_2

    .line 5532
    iget-object v1, p0, Lcom/android/launcher4/Launcher;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    invoke-virtual {v1}, Lcom/android/launcher4/SearchDropTargetBar;->getSearchBarBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 5535
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher4/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V

    .line 5537
    return-void
.end method

.method protected startSettings()V
    .locals 0

    .prologue
    .line 2653
    return-void
.end method

.method public startVoice()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x10000000

    .line 6308
    :try_start_0
    const-string v4, "search"

    invoke-virtual {p0, v4}, Lcom/android/launcher4/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    .line 6310
    .local v3, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {v3}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 6311
    .local v0, "activityName":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.speech.action.WEB_SEARCH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6312
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6313
    if-eqz v0, :cond_0

    .line 6314
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6316
    :cond_0
    const/4 v4, 0x0

    const-string v5, "onClickVoiceButton"

    invoke-virtual {p0, v4, v2, v5}, Lcom/android/launcher4/Launcher;->startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6322
    .end local v0    # "activityName":Landroid/content/ComponentName;
    .end local v3    # "searchManager":Landroid/app/SearchManager;
    :goto_0
    return-void

    .line 6317
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 6318
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.speech.action.WEB_SEARCH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6319
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6320
    const-string v4, "onClickVoiceButton"

    invoke-virtual {p0, v7, v2, v4}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected startWallpaper()V
    .locals 2

    .prologue
    .line 5797
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5798
    .local v0, "pickWallpaper":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getWallpaperPickerComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5799
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher4/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5800
    return-void
.end method

.method public stopVoice()V
    .locals 2

    .prologue
    .line 6797
    const-string v1, "stopVoice"

    invoke-static {v1}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 6798
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.syu.cancle_tts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6799
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.syu.voice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6800
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Launcher;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 6802
    return-void
.end method

.method public timeParse(J)Ljava/lang/String;
    .locals 13
    .param p1, "duration"    # J

    .prologue
    const-wide/32 v8, 0xea60

    const-wide/16 v10, 0xa

    .line 4643
    const-string v6, ""

    .line 4645
    .local v6, "time":Ljava/lang/String;
    div-long v0, p1, v8

    .line 4646
    .local v0, "minute":J
    rem-long v4, p1, v8

    .line 4648
    .local v4, "seconds":J
    long-to-float v7, v4

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-long v2, v7

    .line 4650
    .local v2, "second":J
    cmp-long v7, v0, v10

    if-gez v7, :cond_0

    .line 4651
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4653
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4655
    cmp-long v7, v2, v10

    if-gez v7, :cond_1

    .line 4656
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4658
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4660
    return-object v6
.end method

.method unlockAllApps()V
    .locals 0

    .prologue
    .line 7729
    return-void
.end method

.method public unlockScreenOrientation(Z)V
    .locals 4
    .param p1, "immediate"    # Z

    .prologue
    .line 8763
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->isRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8764
    if-eqz p1, :cond_1

    .line 8765
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Launcher;->setRequestedOrientation(I)V

    .line 8774
    :cond_0
    :goto_0
    return-void

    .line 8767
    :cond_1
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher4/Launcher$100;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Launcher$100;-><init>(Lcom/android/launcher4/Launcher;)V

    .line 8771
    const-wide/16 v2, 0x1f4

    .line 8767
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public updateCustomContentHintVisibility()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 9013
    const v2, 0x7f11006f

    invoke-virtual {p0, v2}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/Cling;

    .line 9014
    .local v1, "cling":Lcom/android/launcher4/Cling;
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getFirstRunCustomContentHint()Ljava/lang/String;

    move-result-object v0

    .line 9016
    .local v0, "ccHintStr":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher4/Workspace;->hasCustomContent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9018
    if-eqz v1, :cond_0

    .line 9019
    invoke-direct {p0, v1, v0, v3, v3}, Lcom/android/launcher4/Launcher;->setCustomContentHintVisibility(Lcom/android/launcher4/Cling;Ljava/lang/String;ZZ)V

    .line 9027
    :cond_0
    :goto_0
    return-void

    .line 9023
    :cond_1
    if-eqz v1, :cond_0

    .line 9024
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/launcher4/Launcher;->setCustomContentHintVisibility(Lcom/android/launcher4/Cling;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method protected updateGlobalSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .prologue
    const v3, 0x7f110088

    .line 7967
    const v2, 0x7f110089

    invoke-virtual {p0, v2}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 7968
    .local v1, "searchButtonContainer":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 7969
    .local v0, "searchButton":Landroid/view/View;
    invoke-direct {p0, v3, p1}, Lcom/android/launcher4/Launcher;->updateButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    .line 7970
    invoke-direct {p0, v1, v0}, Lcom/android/launcher4/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    .line 7971
    return-void
.end method

.method protected updateGlobalSearchIcon()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 7925
    const v6, 0x7f110089

    invoke-virtual {p0, v6}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 7926
    .local v2, "searchButtonContainer":Landroid/view/View;
    const v6, 0x7f110088

    invoke-virtual {p0, v6}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 7927
    .local v1, "searchButton":Landroid/widget/ImageView;
    const v6, 0x7f11008a

    invoke-virtual {p0, v6}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 7928
    .local v5, "voiceButtonContainer":Landroid/view/View;
    const v6, 0x7f110073

    invoke-virtual {p0, v6}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 7930
    .local v4, "voiceButton":Landroid/view/View;
    const-string v6, "search"

    invoke-virtual {p0, v6}, Lcom/android/launcher4/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    .line 7931
    .local v3, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {v3}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 7953
    .local v0, "activityName":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    .line 7954
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7955
    :cond_0
    if-eqz v5, :cond_1

    .line 7956
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7957
    :cond_1
    if-eqz v1, :cond_2

    .line 7958
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7959
    :cond_2
    if-eqz v4, :cond_3

    .line 7960
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7961
    :cond_3
    invoke-virtual {p0, v8}, Lcom/android/launcher4/Launcher;->updateVoiceButtonProxyVisible(Z)V

    .line 7962
    return v8
.end method

.method public updateLoadAnima()V
    .locals 3

    .prologue
    .line 4253
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mDynamicTrailView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 4267
    :cond_0
    :goto_0
    return-void

    .line 4257
    :cond_1
    sget v0, Lcom/android/launcher4/MyAutoMapReceiver;->mCurSpeed:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    .line 4258
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mDynamicTrailView:Landroid/widget/ImageView;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->map_bg1:I

    sget v2, Lcom/android/launcher4/Launcher;->count:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4259
    sget v0, Lcom/android/launcher4/Launcher;->count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/launcher4/Launcher;->count:I

    .line 4260
    sget v0, Lcom/android/launcher4/Launcher;->count:I

    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4261
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher4/Launcher;->count:I

    goto :goto_0

    .line 4265
    :cond_2
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mDynamicTrailView:Landroid/widget/ImageView;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->map_bg1:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public updateView()V
    .locals 2

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTvSettings:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTvSettings:Landroid/widget/TextView;

    const v1, 0x7f0c008a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTvCar:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTvCar:Landroid/widget/TextView;

    const v1, 0x7f0c0095

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 810
    :cond_1
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTvNavi:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 812
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTvNavi:Landroid/widget/TextView;

    const v1, 0x7f0c008b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 814
    :cond_2
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTvMusic:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 816
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTvMusic:Landroid/widget/TextView;

    const v1, 0x7f0c0077

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 818
    :cond_3
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTvRadio:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 820
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTvRadio:Landroid/widget/TextView;

    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 822
    :cond_4
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mMiuDrive:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 824
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mMiuDrive:Landroid/widget/TextView;

    const v1, 0x7f0c0098

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 826
    :cond_5
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTvBt:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 828
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTvBt:Landroid/widget/TextView;

    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 830
    :cond_6
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTvMovie:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 831
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTvMovie:Landroid/widget/TextView;

    const v1, 0x7f0c0074

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 833
    :cond_7
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTvFile:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 834
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTvFile:Landroid/widget/TextView;

    const v1, 0x7f0c0092

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 836
    :cond_8
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTvGallery:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 837
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTvGallery:Landroid/widget/TextView;

    const v1, 0x7f0c0091

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 839
    :cond_9
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTvDVR:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 840
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTvDVR:Landroid/widget/TextView;

    const v1, 0x7f0c006b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 842
    :cond_a
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTvApps:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 843
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mTvApps:Landroid/widget/TextView;

    const v1, 0x7f0c007c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 845
    :cond_b
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mKwMusicName:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 846
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mKwMusicName:Landroid/widget/TextView;

    const v1, 0x7f0c0083

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 848
    :cond_c
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mKwArtist:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 849
    iget-object v0, p0, Lcom/android/launcher4/Launcher;->mKwArtist:Landroid/widget/TextView;

    const v1, 0x7f0c0084

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 852
    :cond_d
    return-void
.end method

.method public updateVoiceButtonProxyVisible(Z)V
    .locals 4
    .param p1, "forceDisableVoiceButtonProxy"    # Z

    .prologue
    const/4 v2, 0x0

    .line 8035
    const v3, 0x7f110072

    invoke-virtual {p0, v3}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 8036
    .local v1, "voiceButtonProxy":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 8037
    if-nez p1, :cond_1

    .line 8038
    sget-object v3, Lcom/android/launcher4/Launcher;->mWorkspace:Lcom/android/launcher4/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher4/Workspace;->shouldVoiceButtonProxyBeVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8037
    const/4 v0, 0x1

    .line 8039
    .local v0, "visible":Z
    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8040
    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 8042
    .end local v0    # "visible":Z
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 8037
    goto :goto_0

    .line 8039
    .restart local v0    # "visible":Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method

.method protected updateVoiceSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .prologue
    const v3, 0x7f110073

    .line 8027
    const v2, 0x7f11008a

    invoke-virtual {p0, v2}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 8028
    .local v1, "voiceButtonContainer":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 8029
    .local v0, "voiceButton":Landroid/view/View;
    invoke-direct {p0, v3, p1}, Lcom/android/launcher4/Launcher;->updateButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    .line 8030
    invoke-direct {p0, v1, v0}, Lcom/android/launcher4/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    .line 8031
    return-void
.end method

.method protected updateVoiceSearchIcon(Z)Z
    .locals 12
    .param p1, "searchVisible"    # Z

    .prologue
    const v11, 0x7f02053f

    const/16 v9, 0x8

    const v10, 0x7f110073

    const/4 v7, 0x0

    .line 7974
    const v8, 0x7f11008a

    invoke-virtual {p0, v8}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 7975
    .local v6, "voiceButtonContainer":Landroid/view/View;
    invoke-virtual {p0, v10}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 7979
    .local v5, "voiceButton":Landroid/view/View;
    const-string v8, "search"

    invoke-virtual {p0, v8}, Lcom/android/launcher4/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    .line 7981
    .local v4, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {v4}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 7983
    .local v2, "globalSearchActivity":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 7984
    .local v0, "activityName":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    .line 7986
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.speech.action.WEB_SEARCH"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7987
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7988
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 7991
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    if-nez v0, :cond_1

    .line 7995
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.speech.action.WEB_SEARCH"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7996
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 7998
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    .line 7999
    invoke-direct {p0}, Lcom/android/launcher4/Launcher;->getCurrentOrientationIndexForGlobalIcons()I

    move-result v1

    .line 8000
    .local v1, "coi":I
    sget-object v8, Lcom/android/launcher4/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 8003
    const-string v9, "com.android.launcher.toolbar_voice_search_icon"

    .line 8000
    invoke-direct {p0, v10, v0, v11, v9}, Lcom/android/launcher4/Launcher;->updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    aput-object v9, v8, v1

    .line 8004
    sget-object v8, Lcom/android/launcher4/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v8, v8, v1

    if-nez v8, :cond_2

    .line 8005
    sget-object v8, Lcom/android/launcher4/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 8008
    const-string v9, "com.android.launcher.toolbar_icon"

    .line 8005
    invoke-direct {p0, v10, v0, v11, v9}, Lcom/android/launcher4/Launcher;->updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    aput-object v9, v8, v1

    .line 8010
    :cond_2
    if-eqz v6, :cond_3

    .line 8011
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 8012
    :cond_3
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 8013
    invoke-virtual {p0, v7}, Lcom/android/launcher4/Launcher;->updateVoiceButtonProxyVisible(Z)V

    .line 8014
    invoke-direct {p0, v6, v5}, Lcom/android/launcher4/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    .line 8015
    const/4 v7, 0x1

    .line 8022
    .end local v1    # "coi":I
    :goto_0
    return v7

    .line 8017
    :cond_4
    if-eqz v6, :cond_5

    .line 8018
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 8019
    :cond_5
    if-eqz v5, :cond_6

    .line 8020
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 8021
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/launcher4/Launcher;->updateVoiceButtonProxyVisible(Z)V

    goto :goto_0
.end method

.method updateWallpaperVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/high16 v2, 0x100000

    .line 7238
    if-eqz p1, :cond_1

    move v1, v2

    .line 7240
    .local v1, "wpflags":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v3, v2

    .line 7242
    .local v0, "curflags":I
    if-eq v1, v0, :cond_0

    .line 7243
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 7246
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher4/Launcher;->setWorkspaceBackground(Z)V

    .line 7247
    return-void

    .line 7239
    .end local v0    # "curflags":I
    .end local v1    # "wpflags":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wakeVoice(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6789
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.syu.execute_tts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6790
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "raw_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6791
    const-string v1, "com.syu.voice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6792
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Launcher;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 6794
    return-void
.end method
