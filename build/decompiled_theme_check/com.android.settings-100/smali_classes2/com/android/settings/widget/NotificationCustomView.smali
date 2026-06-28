.class public Lcom/android/settings/widget/NotificationCustomView;
.super Landroid/widget/FrameLayout;
.source "NotificationCustomView.java"

# interfaces
.implements Lcom/android/settings/widget/DragGridView$GridViewDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/NotificationCustomView$DragAdapter;,
        Lcom/android/settings/widget/NotificationCustomView$LongPressedThread;,
        Lcom/android/settings/widget/NotificationCustomView$WidgetOrderChangedListener;
    }
.end annotation


# static fields
.field private static final ACTION_WIDGET_BUTTONS_CHANGED:Ljava/lang/String; = "com.smartisanos.action.WIDGET_BUTTONS_CHANGED"

.field private static final DELIMITER:Ljava/lang/String; = "|"

.field private static final TAG:Ljava/lang/String; = "NotificationCustomView"

.field private static isPCMode:Z


# instance fields
.field private final ANIM_DURATION:I

.field private final DELAY_SHOW_APP_NAME:I

.field private DISTANCE_MOVE_BOTTOM:I

.field private DRAG_VIEW_ITEM_PADDING:I

.field private DRAG_VIEW_LEFT_MARGIN:I

.field private GRID_VIEW_ITEM_PADDING:I

.field private ICON_SIZE:I

.field private final INVALID_POSITION:I

.field private LONG_PRESS_TRIGGER_TIME:J

.field private final SCALE_RATE:F

.field private final TNT_SHORTCUT_BUTTONS_RESIDENT_NUM:I

.field private isAnimPlaying:Z

.field mAppNameBottom:I

.field mAppNameLeft:I

.field mAppNameRight:I

.field mAppNameTop:I

.field private mAppNameView:Landroid/widget/TextView;

.field private mCandidateContainer:Landroid/view/ViewGroup;

.field private mCandidatePos:I

.field private mCandidateWidgetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/notificationcustom/QuickWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultAdditionalWidgets:Ljava/lang/String;

.field private mDragAdapter:Lcom/android/settings/widget/NotificationCustomView$DragAdapter;

.field private mDragGridView:Lcom/android/settings/widget/DragGridView;

.field private mDragView:Landroid/widget/ImageView;

.field private mDraggingCandidatePos:I

.field mDx:I

.field mDy:I

.field private mFilterWidgets:Ljava/lang/String;

.field private mGridViewEndItemPos:I

.field private mGridViewItemPos:I

.field private mHandler:Landroid/os/Handler;

.field mIsDragCandidate:Z

.field private mIsDragGridViewItem:Z

.field private mLastX:I

.field private mLastY:I

.field mLastmovebb:I

.field mLastmovell:I

.field mLastmoverr:I

.field mLastmovett:I

.field private mLayoutStrategy:Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;

.field private mLongPressedThread:Lcom/android/settings/widget/NotificationCustomView$LongPressedThread;

.field private mMoveView:Landroid/widget/ImageView;

.field private mNotificationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/notificationcustom/QuickWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mStartX:I

.field private mStartY:I

.field private mTargetView:Landroid/widget/ImageView;

.field private mWidgetOrderChangedListener:Lcom/android/settings/widget/NotificationCustomView$WidgetOrderChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    invoke-static {}, Lcom/android/settings/SettingsApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisan/appbaselayer/SMBaseApi;->isSmartisanPCMode(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/widget/NotificationCustomView;->isPCMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->INVALID_POSITION:I

    const/16 v1, 0x64

    .line 65
    iput v1, p0, Lcom/android/settings/widget/NotificationCustomView;->DELAY_SHOW_APP_NAME:I

    const/16 v1, 0x12c

    .line 66
    iput v1, p0, Lcom/android/settings/widget/NotificationCustomView;->ANIM_DURATION:I

    const v1, 0x3fe66666    # 1.8f

    .line 67
    iput v1, p0, Lcom/android/settings/widget/NotificationCustomView;->SCALE_RATE:F

    const/4 v1, 0x0

    .line 76
    iput-boolean v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mIsDragGridViewItem:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/settings/widget/NotificationCustomView;->isAnimPlaying:Z

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mNotificationList:Ljava/util/List;

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidateWidgetList:Ljava/util/List;

    const-string v2, ""

    .line 82
    iput-object v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mFilterWidgets:Ljava/lang/String;

    .line 93
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    .line 99
    iput v2, p0, Lcom/android/settings/widget/NotificationCustomView;->TNT_SHORTCUT_BUTTONS_RESIDENT_NUM:I

    .line 420
    iput-boolean v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mIsDragCandidate:Z

    .line 423
    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidatePos:I

    .line 424
    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewItemPos:I

    .line 425
    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewEndItemPos:I

    .line 426
    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDraggingCandidatePos:I

    .line 107
    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 64
    iput p2, p0, Lcom/android/settings/widget/NotificationCustomView;->INVALID_POSITION:I

    const/16 v0, 0x64

    .line 65
    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->DELAY_SHOW_APP_NAME:I

    const/16 v0, 0x12c

    .line 66
    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->ANIM_DURATION:I

    const v0, 0x3fe66666    # 1.8f

    .line 67
    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->SCALE_RATE:F

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mIsDragGridViewItem:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/settings/widget/NotificationCustomView;->isAnimPlaying:Z

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mNotificationList:Ljava/util/List;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidateWidgetList:Ljava/util/List;

    const-string v1, ""

    .line 82
    iput-object v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mFilterWidgets:Ljava/lang/String;

    .line 93
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    .line 99
    iput v1, p0, Lcom/android/settings/widget/NotificationCustomView;->TNT_SHORTCUT_BUTTONS_RESIDENT_NUM:I

    .line 420
    iput-boolean v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mIsDragCandidate:Z

    .line 423
    iput p2, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidatePos:I

    .line 424
    iput p2, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewItemPos:I

    .line 425
    iput p2, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewEndItemPos:I

    .line 426
    iput p2, p0, Lcom/android/settings/widget/NotificationCustomView;->mDraggingCandidatePos:I

    .line 112
    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 64
    iput p2, p0, Lcom/android/settings/widget/NotificationCustomView;->INVALID_POSITION:I

    const/16 p3, 0x64

    .line 65
    iput p3, p0, Lcom/android/settings/widget/NotificationCustomView;->DELAY_SHOW_APP_NAME:I

    const/16 p3, 0x12c

    .line 66
    iput p3, p0, Lcom/android/settings/widget/NotificationCustomView;->ANIM_DURATION:I

    const p3, 0x3fe66666    # 1.8f

    .line 67
    iput p3, p0, Lcom/android/settings/widget/NotificationCustomView;->SCALE_RATE:F

    const/4 p3, 0x0

    .line 76
    iput-boolean p3, p0, Lcom/android/settings/widget/NotificationCustomView;->mIsDragGridViewItem:Z

    .line 77
    iput-boolean p3, p0, Lcom/android/settings/widget/NotificationCustomView;->isAnimPlaying:Z

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mNotificationList:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidateWidgetList:Ljava/util/List;

    const-string v0, ""

    .line 82
    iput-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mFilterWidgets:Ljava/lang/String;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    .line 99
    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->TNT_SHORTCUT_BUTTONS_RESIDENT_NUM:I

    .line 420
    iput-boolean p3, p0, Lcom/android/settings/widget/NotificationCustomView;->mIsDragCandidate:Z

    .line 423
    iput p2, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidatePos:I

    .line 424
    iput p2, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewItemPos:I

    .line 425
    iput p2, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewEndItemPos:I

    .line 426
    iput p2, p0, Lcom/android/settings/widget/NotificationCustomView;->mDraggingCandidatePos:I

    .line 117
    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/NotificationCustomView;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mIsDragGridViewItem:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/widget/NotificationCustomView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastX:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/settings/widget/NotificationCustomView;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/NotificationCustomView;->swapWidgetAndCandidate(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/widget/NotificationCustomView;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->reset()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/widget/NotificationCustomView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidatePos:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/settings/widget/NotificationCustomView;I)Lcom/android/settings/notificationcustom/QuickWidget;
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->getCandidateWidgetByChildViewPosition(I)Lcom/android/settings/notificationcustom/QuickWidget;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/settings/widget/NotificationCustomView;)Landroid/view/ViewGroup;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidateContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/settings/widget/NotificationCustomView;)Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLayoutStrategy:Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/settings/widget/NotificationCustomView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDraggingCandidatePos:I

    return p0
.end method

.method static synthetic access$1700(Lcom/android/settings/widget/NotificationCustomView;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->swapCandidateInsideWidgets()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/widget/NotificationCustomView;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidateWidgetList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/android/settings/widget/NotificationCustomView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mTargetView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/widget/NotificationCustomView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mStartX:I

    return p0
.end method

.method static synthetic access$2000(Lcom/android/settings/widget/NotificationCustomView;I)Landroid/widget/ImageView;
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->getCandidateViewIcon(I)Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/settings/widget/NotificationCustomView;Lcom/android/settings/notificationcustom/QuickWidget;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->createDragView(Lcom/android/settings/notificationcustom/QuickWidget;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/widget/NotificationCustomView;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->handleAppNameVisibility()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings/widget/NotificationCustomView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewEndItemPos:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/widget/NotificationCustomView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastY:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/widget/NotificationCustomView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mStartY:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/settings/widget/NotificationCustomView;)Landroid/widget/TextView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/settings/widget/NotificationCustomView;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/android/settings/widget/NotificationCustomView;->isAnimPlaying:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/widget/NotificationCustomView;)Lcom/android/settings/widget/NotificationCustomView$DragAdapter;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragAdapter:Lcom/android/settings/widget/NotificationCustomView$DragAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/widget/NotificationCustomView;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mNotificationList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/widget/NotificationCustomView;)Landroid/widget/ImageView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mMoveView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private allowCandidateExchangeSelfInside()Z
    .locals 1

    .line 1037
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLayoutStrategy:Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;

    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidateContainer:Landroid/view/ViewGroup;

    invoke-interface {v0, p0}, Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;->allowCandidateExchangeSelfWidget(Landroid/view/ViewGroup;)Z

    move-result p0

    return p0
.end method

.method private animExchangeCandidateWidgetInside()V
    .locals 14

    .line 669
    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidatePos:I

    invoke-direct {p0, v0}, Lcom/android/settings/widget/NotificationCustomView;->getCandidateViewIcon(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/NotificationCustomView;->getRectInParent(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 670
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 671
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 673
    iget v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mDraggingCandidatePos:I

    invoke-direct {p0, v2}, Lcom/android/settings/widget/NotificationCustomView;->getCandidateViewIcon(I)Landroid/widget/ImageView;

    move-result-object v2

    .line 674
    invoke-direct {p0, v2}, Lcom/android/settings/widget/NotificationCustomView;->getRectInParent(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 676
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 677
    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    add-int/2addr v3, v2

    .line 679
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v5, p0, Lcom/android/settings/widget/NotificationCustomView;->GRID_VIEW_ITEM_PADDING:I

    add-int/2addr v1, v5

    int-to-float v7, v1

    int-to-float v9, v4

    add-int/2addr v0, v5

    iget v1, p0, Lcom/android/settings/widget/NotificationCustomView;->DISTANCE_MOVE_BOTTOM:I

    sub-int/2addr v0, v1

    int-to-float v11, v0

    int-to-float v13, v3

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0x12c

    .line 685
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 686
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 687
    new-instance v0, Lcom/android/settings/widget/NotificationCustomView$3;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/NotificationCustomView$3;-><init>(Lcom/android/settings/widget/NotificationCustomView;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 709
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mMoveView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private calculateDxDy(II)V
    .locals 2

    .line 942
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mTargetView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/settings/widget/NotificationCustomView;->getRectInParent(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 943
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mDx:I

    .line 944
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mDy:I

    return-void
.end method

.method private checkValidity()Z
    .locals 11

    .line 385
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/widget/NotificationCustomView;->getCurrentQuickWidgetSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    sget-boolean v3, Lcom/android/settings/widget/NotificationCustomView;->isPCMode:Z

    if-eqz v3, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationCustomView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/widget/NotificationCustomView;->getDefaultTNTQuickWidgetSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationCustomView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lsmartisanos/util/SettingsUtil;->getDefaultNotificationWidgets(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "\\|"

    .line 391
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_3

    aget-object v8, v4, v7

    .line 392
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 393
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 394
    invoke-virtual {v1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v10, v9, :cond_2

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkValidity got duplicate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationCustomView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkValidity got error reset settings, error info:\n currentWidgetOrder = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    sget-boolean v0, Lcom/android/settings/widget/NotificationCustomView;->isPCMode:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_2

    .line 400
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationCustomView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lsmartisanos/util/SettingsUtil;->getAdditionalNotificationWidgets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    :goto_2
    invoke-direct {p0, v3, v0}, Lcom/android/settings/widget/NotificationCustomView;->saveWidgetButtonsAndNotify(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private createDragView(Lcom/android/settings/notificationcustom/QuickWidget;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 997
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    .line 1000
    iget v3, p1, Lcom/android/settings/notificationcustom/QuickWidget;->imageResId:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1001
    iget v2, p1, Lcom/android/settings/notificationcustom/QuickWidget;->imageResId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 1002
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1003
    iget-object v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1005
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragView:Landroid/widget/ImageView;

    const v1, 0x3fe66666    # 1.8f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1006
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1007
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 1008
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1010
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameView:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/android/settings/notificationcustom/QuickWidget;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    iget p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastX:I

    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastY:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/NotificationCustomView;->calculateDxDy(II)V

    .line 1012
    iget p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastX:I

    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastY:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/NotificationCustomView;->drawDragViews(II)V

    return-void
.end method

.method private static createLayoutStrategy()Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;
    .locals 1

    .line 171
    sget-boolean v0, Lcom/android/settings/widget/NotificationCustomView;->isPCMode:Z

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Lcom/android/settings/notificationcustom/LargeScreenNotificationCustomLayoutStrategy;

    invoke-direct {v0}, Lcom/android/settings/notificationcustom/LargeScreenNotificationCustomLayoutStrategy;-><init>()V

    return-object v0

    .line 173
    :cond_0
    invoke-static {}, Lcom/android/settings/widget/NotificationCustomView;->isAdditionalOrderSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    new-instance v0, Lcom/android/settings/notificationcustom/NewSystemUINotificationCustomLayoutStrategy;

    invoke-direct {v0}, Lcom/android/settings/notificationcustom/NewSystemUINotificationCustomLayoutStrategy;-><init>()V

    return-object v0

    .line 176
    :cond_1
    new-instance v0, Lcom/android/settings/notificationcustom/DefaultNotificationCustomLayoutStrategy;

    invoke-direct {v0}, Lcom/android/settings/notificationcustom/DefaultNotificationCustomLayoutStrategy;-><init>()V

    return-object v0
.end method

.method private drawDragViews(II)V
    .locals 6

    .line 950
    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDx:I

    add-int/2addr p1, v0

    .line 951
    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDy:I

    add-int/2addr p2, v0

    .line 953
    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->ICON_SIZE:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/settings/widget/NotificationCustomView;->DRAG_VIEW_ITEM_PADDING:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    sub-int v1, p1, v0

    .line 954
    iput v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastmovell:I

    add-int v1, p1, v0

    .line 955
    iput v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastmoverr:I

    if-lez p2, :cond_0

    sub-int v1, p2, v0

    .line 957
    iput v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastmovett:I

    add-int/2addr v0, p2

    .line 958
    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastmovebb:I

    goto :goto_0

    :cond_0
    neg-int v1, v0

    .line 960
    iput v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastmovett:I

    .line 961
    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastmovebb:I

    .line 964
    :goto_0
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 966
    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastY:I

    iget v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mStartY:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0x2d

    if-gt v0, v2, :cond_2

    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastX:I

    iget v3, p0, Lcom/android/settings/widget/NotificationCustomView;->mStartX:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_1

    goto :goto_1

    .line 969
    :cond_1
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 970
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 971
    iget-object v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->measure(II)V

    .line 972
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 973
    iget-object v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 974
    iget v2, p0, Lcom/android/settings/widget/NotificationCustomView;->ICON_SIZE:I

    int-to-double v2, v2

    const-wide v4, 0x4006666660000000L    # 2.799999952316284

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 975
    div-int/lit8 v0, v0, 0x2

    sub-int v3, p1, v0

    iput v3, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameLeft:I

    .line 976
    div-int/lit8 v1, v1, 0x2

    sub-int v3, p2, v1

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameTop:I

    add-int/2addr p1, v0

    .line 977
    iput p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameRight:I

    add-int/2addr p2, v1

    sub-int/2addr p2, v2

    .line 978
    iput p2, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameBottom:I

    goto :goto_2

    .line 967
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameView:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 980
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationCustomView;->requestLayout()V

    return-void
.end method

.method private endMoveUpAnim(Landroid/widget/ImageView;)V
    .locals 10

    .line 861
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    iget p0, p0, Lcom/android/settings/widget/NotificationCustomView;->DISTANCE_MOVE_BOTTOM:I

    neg-int p0, p0

    int-to-float v6, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0xc8

    .line 865
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 866
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-direct {p0, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v9, p0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 867
    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private filterSwitch(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 314
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 318
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isDarwin()Z

    move-result v0

    const-string v1, "|"

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationCustomView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/casthal/CasthalManager;->getInstance(Landroid/content/Context;)Landroid/casthal/CasthalManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationCustomView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/casthal/CasthalManager;->getInstance(Landroid/content/Context;)Landroid/casthal/CasthalManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/casthal/CasthalManager;->hasWirelessCapabilitie()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "toggleRelay"

    const-string v2, ""

    .line 323
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mFilterWidgets:Ljava/lang/String;

    .line 326
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 327
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string p0, "||"

    .line 329
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCandidateViewIcon(I)Landroid/widget/ImageView;
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLayoutStrategy:Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;

    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidateContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;->getCandidateViewIcon(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method private getCandidateWidgetByChildViewPosition(I)Lcom/android/settings/notificationcustom/QuickWidget;
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLayoutStrategy:Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;

    iget-object v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidateContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidateWidgetList:Ljava/util/List;

    invoke-interface {v0, v1, p0, p1}, Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;->getCandidateWidgetByChildViewPosition(Landroid/view/ViewGroup;Ljava/util/List;I)Lcom/android/settings/notificationcustom/QuickWidget;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentAdditionalQuickWidgetSettings(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 228
    sget-boolean v0, Lcom/android/settings/widget/NotificationCustomView;->isPCMode:Z

    if-eqz v0, :cond_0

    .line 229
    invoke-static {p0}, Lcom/android/settings/widget/NotificationCustomView;->getCurrentTNTQuickWidgetSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 231
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_widget_buttons_additional"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    invoke-static {p0}, Lcom/android/settings/widget/NotificationCustomView;->getCurrentQuickWidgetSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lsmartisanos/util/SettingsUtil;->getAdditionalNotificationWidgets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getCurrentBostonQuickWidgetSettings(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "boston_expanded_widget_buttons"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    invoke-static {p0}, Lcom/android/settings/widget/NotificationCustomView;->getDefaultTNTQuickWidgetSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getCurrentQuickWidgetSettings(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 216
    sget-boolean v0, Lcom/android/settings/widget/NotificationCustomView;->isPCMode:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-static {p0}, Lcom/android/settings/widget/NotificationCustomView;->getCurrentTNTQuickWidgetSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 219
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_widget_buttons"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-static {p0}, Lsmartisanos/util/SettingsUtil;->getDefaultNotificationWidgets(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getCurrentTNTQuickWidgetSettings(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 245
    sget-boolean v0, Lcom/android/settings/Constants;->sIsBostonConnected:Z

    if-eqz v0, :cond_0

    .line 246
    invoke-static {p0}, Lcom/android/settings/widget/NotificationCustomView;->getCurrentBostonQuickWidgetSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 248
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tnt_expanded_widget_buttons"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    invoke-static {p0}, Lcom/android/settings/widget/NotificationCustomView;->getDefaultTNTQuickWidgetSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getCurrentWidgetOrder(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/notificationcustom/QuickWidget;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 411
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 412
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 413
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notificationcustom/QuickWidget;

    .line 414
    iget-object v2, v2, Lcom/android/settings/notificationcustom/QuickWidget;->key:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultAdditionalOrderSettings()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDefaultAdditionalWidgets:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lsmartisanos/util/SettingsUtil;->getDefaultAdditionalNotificationWidgets(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDefaultAdditionalWidgets:Ljava/lang/String;

    .line 276
    :cond_0
    sget-boolean v0, Lcom/android/settings/widget/NotificationCustomView;->isPCMode:Z

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/widget/NotificationCustomView;->getDefaultTNTQuickWidgetSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDefaultAdditionalWidgets:Ljava/lang/String;

    .line 279
    :cond_1
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDefaultAdditionalWidgets:Ljava/lang/String;

    return-object p0
.end method

.method private getDefaultOrderSettings()Ljava/lang/String;
    .locals 1

    .line 266
    sget-boolean v0, Lcom/android/settings/widget/NotificationCustomView;->isPCMode:Z

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationCustomView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/widget/NotificationCustomView;->getDefaultTNTQuickWidgetSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationCustomView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lsmartisanos/util/SettingsUtil;->getDefaultNotificationWidgets(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultTNTQuickWidgetSettings(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 240
    sget-boolean v0, Lcom/android/settings/Constants;->sIsBostonConnected:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lsmartisanos/util/SettingsUtil;->getDefaultNotificationWidgetsForBoston(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 241
    :cond_0
    invoke-static {p0}, Lsmartisanos/util/SettingsUtil;->getDefaultNotificationWidgetsForTnt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getDragGridViewItemIcon(I)Landroid/widget/ImageView;
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLayoutStrategy:Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;

    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragGridView:Lcom/android/settings/widget/DragGridView;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;->getDragGridViewItemIcon(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method private getMoveDragViewBackAnimListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .line 811
    new-instance v0, Lcom/android/settings/widget/NotificationCustomView$6;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/NotificationCustomView$6;-><init>(Lcom/android/settings/widget/NotificationCustomView;)V

    return-object v0
.end method

.method private getMoveViewAnimListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .line 791
    new-instance v0, Lcom/android/settings/widget/NotificationCustomView$5;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/NotificationCustomView$5;-><init>(Lcom/android/settings/widget/NotificationCustomView;)V

    return-object v0
.end method

.method private getPositionOfCandidateIcon(II)I
    .locals 2

    const/4 v0, 0x0

    .line 916
    :goto_0
    iget-object v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidateContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 917
    iget-object v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidateContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 918
    invoke-direct {p0, v1}, Lcom/android/settings/widget/NotificationCustomView;->getRectInParent(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 919
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method private getPositionOfGridViewItem(II)I
    .locals 2

    const/4 v0, 0x0

    .line 928
    :goto_0
    iget-object v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragGridView:Lcom/android/settings/widget/DragGridView;

    invoke-virtual {v1}, Lcom/android/settings/widget/DragGridView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 929
    iget-object v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragGridView:Lcom/android/settings/widget/DragGridView;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 930
    invoke-direct {p0, v1}, Lcom/android/settings/widget/NotificationCustomView;->getRectInParent(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 931
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getRectInParent(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1042
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/NotificationCustomView;->getLocationInWindow([I)V

    new-array p0, v0, [I

    if-eqz p1, :cond_0

    .line 1045
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1047
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    .line 1048
    aget v3, p0, v2

    aget v2, v1, v2

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    .line 1049
    aget p0, p0, v2

    aget v1, v1, v2

    sub-int/2addr p0, v1

    iput p0, v0, Landroid/graphics/Rect;->top:I

    if-eqz p1, :cond_1

    .line 1051
    iget p0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr p0, v1

    iput p0, v0, Landroid/graphics/Rect;->right:I

    .line 1052
    iget p0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-object v0
.end method

.method private getRestoreDragGridViewItemAnim()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .line 1121
    new-instance v0, Lcom/android/settings/widget/NotificationCustomView$7;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/NotificationCustomView$7;-><init>(Lcom/android/settings/widget/NotificationCustomView;)V

    return-object v0
.end method

.method private handleAppNameVisibility()V
    .locals 4

    .line 518
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/widget/NotificationCustomView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/NotificationCustomView$1;-><init>(Lcom/android/settings/widget/NotificationCustomView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .line 121
    invoke-static {}, Lcom/android/settings/widget/NotificationCustomView;->createLayoutStrategy()Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLayoutStrategy:Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;

    .line 122
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->initDimens()V

    .line 124
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLayoutStrategy:Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;

    invoke-interface {v0, p1, p0}, Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;->onInitRootChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    if-eq p1, p0, :cond_1

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    :goto_0
    if-eq p1, p0, :cond_3

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_2

    goto :goto_1

    .line 130
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "provided root child can only attach to the given parent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 136
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLayoutStrategy:Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;

    invoke-interface {v0, p1}, Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;->getDragGridView(Landroid/view/View;)Lcom/android/settings/widget/DragGridView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragGridView:Lcom/android/settings/widget/DragGridView;

    .line 137
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLayoutStrategy:Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;

    invoke-interface {v0, p1}, Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;->getCandidateContainer(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidateContainer:Landroid/view/ViewGroup;

    .line 139
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragGridView:Lcom/android/settings/widget/DragGridView;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/DragGridView;->setGridViewDragListener(Lcom/android/settings/widget/DragGridView$GridViewDragListener;)V

    .line 140
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragGridView:Lcom/android/settings/widget/DragGridView;

    const-wide/16 v0, 0x32

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/widget/DragGridView;->setDragResponseMS(J)V

    .line 142
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationCustomView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragView:Landroid/widget/ImageView;

    .line 143
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 145
    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->DRAG_VIEW_LEFT_MARGIN:I

    neg-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 146
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/widget/NotificationCustomView;->DRAG_VIEW_ITEM_PADDING:I

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/NotificationCustomView;->addView(Landroid/view/View;)V

    .line 152
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/android/settings/widget/NotificationCustomView;->ICON_SIZE:I

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 153
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationCustomView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mMoveView:Landroid/widget/ImageView;

    .line 154
    iget v2, p0, Lcom/android/settings/widget/NotificationCustomView;->DRAG_VIEW_LEFT_MARGIN:I

    neg-int v2, v2

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 155
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mMoveView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mMoveView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mMoveView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->addView(Landroid/view/View;)V

    .line 159
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->initAppNameTextView()V

    .line 161
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/widget/NotificationCustomView;->getCurrentQuickWidgetSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->loadGridViewData(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->loadCandidateWidgetData()V

    .line 165
    new-instance p1, Lcom/android/settings/widget/NotificationCustomView$DragAdapter;

    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mNotificationList:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/widget/NotificationCustomView$DragAdapter;-><init>(Lcom/android/settings/widget/NotificationCustomView;Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragAdapter:Lcom/android/settings/widget/NotificationCustomView$DragAdapter;

    .line 167
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragGridView:Lcom/android/settings/widget/DragGridView;

    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragAdapter:Lcom/android/settings/widget/NotificationCustomView$DragAdapter;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/DragGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 126
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "root child can NOT be NULL"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initAppNameTextView()V
    .locals 3

    .line 534
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationCustomView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameView:Landroid/widget/TextView;

    .line 535
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 537
    iget v1, p0, Lcom/android/settings/widget/NotificationCustomView;->DRAG_VIEW_LEFT_MARGIN:I

    neg-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 538
    iget-object v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 540
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const v2, 0x4149999a    # 12.6f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 541
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameView:Landroid/widget/TextView;

    const-string v1, "#B3000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 542
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationCustomView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080373

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 543
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 544
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/NotificationCustomView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initDimens()V
    .locals 2

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationCustomView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->ICON_SIZE:I

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationCustomView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->DISTANCE_MOVE_BOTTOM:I

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationCustomView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->DRAG_VIEW_LEFT_MARGIN:I

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationCustomView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->GRID_VIEW_ITEM_PADDING:I

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationCustomView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->DRAG_VIEW_ITEM_PADDING:I

    .line 185
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLayoutStrategy:Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;

    invoke-interface {v0}, Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;->getLongPressTriggerTimeMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/widget/NotificationCustomView;->LONG_PRESS_TRIGGER_TIME:J

    return-void
.end method

.method private static isAdditionalOrderSupport()Z
    .locals 1

    .line 283
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isNewSystemUI()Z

    move-result v0

    return v0
.end method

.method private loadCandidateWidgetData()V
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/widget/NotificationCustomView;->getCurrentAdditionalQuickWidgetSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-direct {p0, v0}, Lcom/android/settings/widget/NotificationCustomView;->filterSwitch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "candidateWidgetList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationCustomView"

    invoke-static {v2, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidateWidgetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 302
    sget-boolean v1, Lcom/android/settings/widget/NotificationCustomView;->isPCMode:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 303
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationCustomView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/settings/notificationcustom/QuickWidgetFactory;->getWidget(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/notificationcustom/QuickWidget;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 308
    :cond_1
    iget-object v3, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidateWidgetList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLayoutStrategy:Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;

    iget-object v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidateContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidateWidgetList:Ljava/util/List;

    invoke-interface {v0, v1, p0}, Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;->onLayoutCandidateContainer(Landroid/view/ViewGroup;Ljava/util/List;)V

    return-void
.end method

.method private loadGridViewData(Ljava/lang/String;)V
    .locals 5

    .line 205
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->checkValidity()Z

    .line 206
    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->filterSwitch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 207
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mNotificationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "\\|"

    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 209
    sget-boolean v0, Lcom/android/settings/widget/NotificationCustomView;->isPCMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    array-length v0, p1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 211
    iget-object v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mNotificationList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationCustomView;->getContext()Landroid/content/Context;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-static {v3, v4}, Lcom/android/settings/notificationcustom/QuickWidgetFactory;->getWidget(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/notificationcustom/QuickWidget;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private moveCandidateToWidgetAnim(II)V
    .locals 16

    move-object/from16 v0, p0

    .line 717
    iget v1, v0, Lcom/android/settings/widget/NotificationCustomView;->mCandidatePos:I

    invoke-direct {v0, v1}, Lcom/android/settings/widget/NotificationCustomView;->getCandidateViewIcon(I)Landroid/widget/ImageView;

    move-result-object v1

    .line 718
    invoke-direct {v0, v1}, Lcom/android/settings/widget/NotificationCustomView;->getRectInParent(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 720
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 721
    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    add-int/2addr v2, v4

    .line 723
    iget v4, v0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewItemPos:I

    invoke-direct {v0, v4}, Lcom/android/settings/widget/NotificationCustomView;->getDragGridViewItemIcon(I)Landroid/widget/ImageView;

    move-result-object v4

    .line 724
    invoke-direct {v0, v4}, Lcom/android/settings/widget/NotificationCustomView;->getRectInParent(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 726
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 727
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 729
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    int-to-float v8, v3

    iget v3, v0, Lcom/android/settings/widget/NotificationCustomView;->GRID_VIEW_ITEM_PADDING:I

    add-int/2addr v5, v3

    int-to-float v10, v5

    iget v5, v0, Lcom/android/settings/widget/NotificationCustomView;->DISTANCE_MOVE_BOTTOM:I

    sub-int/2addr v2, v5

    int-to-float v12, v2

    add-int/2addr v4, v3

    int-to-float v14, v4

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v6, v15

    invoke-direct/range {v6 .. v14}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x12c

    .line 735
    invoke-virtual {v15, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 736
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v15, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 737
    new-instance v2, Lcom/android/settings/widget/NotificationCustomView$4;

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v2, v0, v4, v1, v3}, Lcom/android/settings/widget/NotificationCustomView$4;-><init>(Lcom/android/settings/widget/NotificationCustomView;ILandroid/widget/ImageView;I)V

    invoke-virtual {v15, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 759
    iget-object v0, v0, Lcom/android/settings/widget/NotificationCustomView;->mMoveView:Landroid/widget/ImageView;

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private moveDragViewAnim(IIIILandroid/view/animation/Animation$AnimationListener;)V
    .locals 10

    .line 593
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    sub-int/2addr p3, p1

    int-to-float v4, p3

    sub-int/2addr p4, p2

    int-to-float v8, p4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 p1, 0x12c

    .line 599
    invoke-virtual {v9, p1, p2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 600
    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p4, 0x3fc00000    # 1.5f

    invoke-direct {p3, p4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v9, p3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 602
    new-instance p3, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f0e38e4

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f0e38e4

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p3

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 604
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, p4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p3, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 605
    invoke-virtual {p3, p1, p2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 607
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 608
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, p4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 609
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 611
    new-instance p1, Landroid/view/animation/AnimationSet;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 612
    invoke-virtual {p1, p3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 613
    invoke-virtual {p1, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 614
    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 615
    invoke-virtual {p1, p5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 616
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private moveWidgetAnim()V
    .locals 14

    .line 763
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mMoveView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mNotificationList:Ljava/util/List;

    iget v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewEndItemPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notificationcustom/QuickWidget;

    iget v1, v1, Lcom/android/settings/notificationcustom/QuickWidget;->imageResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 764
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mMoveView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 766
    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewEndItemPos:I

    invoke-direct {p0, v0}, Lcom/android/settings/widget/NotificationCustomView;->getDragGridViewItemIcon(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 767
    invoke-direct {p0, v0}, Lcom/android/settings/widget/NotificationCustomView;->getRectInParent(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 769
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 770
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 772
    iget v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewItemPos:I

    invoke-direct {p0, v2}, Lcom/android/settings/widget/NotificationCustomView;->getDragGridViewItemIcon(I)Landroid/widget/ImageView;

    move-result-object v2

    .line 773
    invoke-direct {p0, v2}, Lcom/android/settings/widget/NotificationCustomView;->getRectInParent(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 775
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 776
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 778
    new-instance v13, Landroid/view/animation/TranslateAnimation;

    iget v4, p0, Lcom/android/settings/widget/NotificationCustomView;->GRID_VIEW_ITEM_PADDING:I

    add-int/2addr v1, v4

    int-to-float v6, v1

    add-int/2addr v3, v4

    int-to-float v8, v3

    add-int/2addr v0, v4

    iget v1, p0, Lcom/android/settings/widget/NotificationCustomView;->DISTANCE_MOVE_BOTTOM:I

    sub-int/2addr v0, v1

    int-to-float v10, v0

    add-int/2addr v2, v4

    int-to-float v12, v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0x12c

    .line 784
    invoke-virtual {v13, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 785
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v13, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 786
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->getMoveViewAnimListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 787
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mMoveView:Landroid/widget/ImageView;

    invoke-virtual {p0, v13}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private moveWidgetToCandidateAnim(II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 620
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/widget/NotificationCustomView;->getDragGridViewItemIcon(I)Landroid/widget/ImageView;

    move-result-object v2

    .line 621
    invoke-direct {v0, v2}, Lcom/android/settings/widget/NotificationCustomView;->getRectInParent(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 623
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 624
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 626
    invoke-direct {v0, v1}, Lcom/android/settings/widget/NotificationCustomView;->getCandidateViewIcon(I)Landroid/widget/ImageView;

    move-result-object v4

    .line 627
    invoke-direct {v0, v4}, Lcom/android/settings/widget/NotificationCustomView;->getRectInParent(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    .line 629
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 630
    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    add-int/2addr v5, v4

    .line 632
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    iget v7, v0, Lcom/android/settings/widget/NotificationCustomView;->GRID_VIEW_ITEM_PADDING:I

    add-int/2addr v3, v7

    int-to-float v9, v3

    int-to-float v11, v6

    add-int/2addr v2, v7

    iget v3, v0, Lcom/android/settings/widget/NotificationCustomView;->DISTANCE_MOVE_BOTTOM:I

    sub-int/2addr v2, v3

    int-to-float v13, v2

    int-to-float v15, v5

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v7, v4

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x12c

    .line 638
    invoke-virtual {v4, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 639
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 640
    new-instance v2, Lcom/android/settings/widget/NotificationCustomView$2;

    move/from16 v3, p1

    invoke-direct {v2, v0, v3, v1}, Lcom/android/settings/widget/NotificationCustomView$2;-><init>(Lcom/android/settings/widget/NotificationCustomView;II)V

    invoke-virtual {v4, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 665
    iget-object v0, v0, Lcom/android/settings/widget/NotificationCustomView;->mMoveView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private onCandidateWidgetChanged(ILcom/android/settings/notificationcustom/QuickWidget;Lcom/android/settings/notificationcustom/QuickWidget;)V
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLayoutStrategy:Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;

    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidateContainer:Landroid/view/ViewGroup;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;->onCandidateWidgetChanged(Landroid/view/ViewGroup;ILcom/android/settings/notificationcustom/QuickWidget;Lcom/android/settings/notificationcustom/QuickWidget;)V

    return-void
.end method

.method private onWidgetOrderChanged()V
    .locals 1

    .line 339
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->saveSettings()V

    .line 340
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mWidgetOrderChangedListener:Lcom/android/settings/widget/NotificationCustomView$WidgetOrderChangedListener;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationCustomView;->isDefaultWidgetOrder()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/settings/widget/NotificationCustomView$WidgetOrderChangedListener;->onWidgetOrderChanged(Z)V

    :cond_0
    return-void
.end method

.method private overlayCandidateItemIfNeed(II)V
    .locals 3

    .line 1016
    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDx:I

    add-int/2addr p1, v0

    .line 1017
    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDy:I

    add-int/2addr p2, v0

    .line 1018
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/NotificationCustomView;->getPositionOfCandidateIcon(II)I

    move-result p1

    .line 1019
    iget p2, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidatePos:I

    if-eq p2, p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, -0x1

    if-eqz p2, :cond_2

    .line 1021
    iget v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidatePos:I

    if-eq v1, v0, :cond_2

    .line 1022
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->allowCandidateExchangeSelfInside()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidatePos:I

    iget v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mDraggingCandidatePos:I

    if-eq v1, v2, :cond_2

    .line 1023
    :cond_1
    iget v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidatePos:I

    invoke-direct {p0, v1}, Lcom/android/settings/widget/NotificationCustomView;->getCandidateViewIcon(I)Landroid/widget/ImageView;

    move-result-object v1

    .line 1024
    invoke-direct {p0, v1}, Lcom/android/settings/widget/NotificationCustomView;->endMoveUpAnim(Landroid/widget/ImageView;)V

    .line 1027
    :cond_2
    iput p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidatePos:I

    .line 1028
    iget p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidatePos:I

    if-eq p1, v0, :cond_4

    if-eqz p2, :cond_4

    .line 1029
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->allowCandidateExchangeSelfInside()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidatePos:I

    iget p2, p0, Lcom/android/settings/widget/NotificationCustomView;->mDraggingCandidatePos:I

    if-eq p1, p2, :cond_4

    .line 1030
    :cond_3
    iget p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidatePos:I

    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->getCandidateViewIcon(I)Landroid/widget/ImageView;

    move-result-object p1

    .line 1031
    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->startMoveUpAnim(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private overlayGridViewItemIfNeed(II)V
    .locals 2

    .line 871
    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDx:I

    add-int/2addr p1, v0

    .line 872
    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDy:I

    add-int/2addr p2, v0

    .line 873
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/NotificationCustomView;->getPositionOfGridViewItem(II)I

    move-result p1

    .line 874
    iget p2, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewItemPos:I

    if-eq p2, p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, -0x1

    if-eqz p2, :cond_1

    .line 875
    iget v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewItemPos:I

    if-eq v1, v0, :cond_1

    .line 876
    invoke-direct {p0, v1}, Lcom/android/settings/widget/NotificationCustomView;->getDragGridViewItemIcon(I)Landroid/widget/ImageView;

    move-result-object v1

    .line 877
    invoke-direct {p0, v1}, Lcom/android/settings/widget/NotificationCustomView;->endMoveUpAnim(Landroid/widget/ImageView;)V

    .line 879
    :cond_1
    iput p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewItemPos:I

    .line 881
    iget p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewItemPos:I

    if-eq p1, v0, :cond_2

    if-eqz p2, :cond_2

    .line 882
    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->getDragGridViewItemIcon(I)Landroid/widget/ImageView;

    move-result-object p1

    .line 883
    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->startMoveUpAnim(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private overlayWidget(II)V
    .locals 3

    .line 893
    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDx:I

    add-int/2addr p1, v0

    .line 894
    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDy:I

    add-int/2addr p2, v0

    .line 895
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/NotificationCustomView;->getPositionOfGridViewItem(II)I

    move-result p1

    .line 896
    iget p2, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewEndItemPos:I

    if-eq p2, p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, -0x1

    if-eqz p2, :cond_1

    .line 897
    iget v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewEndItemPos:I

    if-eq v1, v0, :cond_1

    .line 898
    invoke-direct {p0, v1}, Lcom/android/settings/widget/NotificationCustomView;->getDragGridViewItemIcon(I)Landroid/widget/ImageView;

    move-result-object v1

    .line 899
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 900
    invoke-direct {p0, v1}, Lcom/android/settings/widget/NotificationCustomView;->endMoveUpAnim(Landroid/widget/ImageView;)V

    .line 903
    :cond_1
    iput p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewEndItemPos:I

    .line 905
    iget p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewEndItemPos:I

    if-eq p1, v0, :cond_2

    if-eqz p2, :cond_2

    .line 906
    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->getDragGridViewItemIcon(I)Landroid/widget/ImageView;

    move-result-object p1

    .line 907
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_2

    .line 908
    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->startMoveUpAnim(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private reset()V
    .locals 5

    .line 831
    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidatePos:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 832
    iget-object v3, p0, Lcom/android/settings/widget/NotificationCustomView;->mLayoutStrategy:Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;

    iget-object v4, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidateContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;->updateCandidateChildViewVisibility(Landroid/view/View;I)V

    .line 834
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDraggingCandidatePos:I

    if-eq v0, v2, :cond_1

    .line 835
    iget-object v3, p0, Lcom/android/settings/widget/NotificationCustomView;->mLayoutStrategy:Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;

    iget-object v4, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidateContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;->updateCandidateChildViewVisibility(Landroid/view/View;I)V

    .line 837
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/widget/NotificationCustomView;->isAnimPlaying:Z

    .line 838
    iput v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidatePos:I

    .line 839
    iput v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewItemPos:I

    .line 840
    iput v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewEndItemPos:I

    .line 841
    iput v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mDraggingCandidatePos:I

    const/4 v0, 0x0

    .line 842
    iput-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mTargetView:Landroid/widget/ImageView;

    .line 843
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragAdapter:Lcom/android/settings/widget/NotificationCustomView$DragAdapter;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/NotificationCustomView$DragAdapter;->setHideItem(I)V

    .line 845
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 846
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 847
    iput-boolean v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mIsDragCandidate:Z

    return-void
.end method

.method private saveSettings()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mNotificationList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/widget/NotificationCustomView;->getCurrentWidgetOrder(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidateWidgetList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/settings/widget/NotificationCustomView;->getCurrentWidgetOrder(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-direct {p0, v0, v1}, Lcom/android/settings/widget/NotificationCustomView;->saveWidgetButtonsAndNotify(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveWidgetButtonsAndNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationCustomView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 361
    sget-boolean v2, Lcom/android/settings/widget/NotificationCustomView;->isPCMode:Z

    if-eqz v2, :cond_1

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mFilterWidgets:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 364
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "tntWidgetButtons : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NotificationCustomView"

    invoke-static {p2, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    sget-boolean p1, Lcom/android/settings/Constants;->sIsBostonConnected:Z

    if-eqz p1, :cond_0

    const-string p1, "boston_expanded_widget_buttons"

    goto :goto_0

    :cond_0
    const-string p1, "tnt_expanded_widget_buttons"

    .line 369
    :goto_0
    invoke-static {v1, p1, p0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    const-string p0, "expanded_widget_buttons"

    .line 371
    invoke-static {v1, p0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p0, "expanded_widget_buttons_additional"

    .line 372
    invoke-static {v1, p0, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 376
    :goto_1
    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.smartisanos.action.WIDGET_BUTTONS_CHANGED"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "com.android.systemui"

    .line 377
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private startMoveUpAnim(Landroid/view/View;)V
    .locals 10

    .line 851
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    iget p0, p0, Lcom/android/settings/widget/NotificationCustomView;->DISTANCE_MOVE_BOTTOM:I

    neg-int p0, p0

    int-to-float v8, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0xc8

    .line 854
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 p0, 0x1

    .line 855
    invoke-virtual {v9, p0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 856
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-direct {p0, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v9, p0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 857
    invoke-virtual {p1, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private swapCandidateInsideWidgets()V
    .locals 4

    .line 562
    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDraggingCandidatePos:I

    invoke-direct {p0, v0}, Lcom/android/settings/widget/NotificationCustomView;->getCandidateWidgetByChildViewPosition(I)Lcom/android/settings/notificationcustom/QuickWidget;

    move-result-object v0

    .line 563
    iget v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidatePos:I

    invoke-direct {p0, v1}, Lcom/android/settings/widget/NotificationCustomView;->getCandidateWidgetByChildViewPosition(I)Lcom/android/settings/notificationcustom/QuickWidget;

    move-result-object v1

    .line 565
    iget-object v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidateWidgetList:Ljava/util/List;

    iget v3, p0, Lcom/android/settings/widget/NotificationCustomView;->mDraggingCandidatePos:I

    invoke-interface {v2, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 566
    iget v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mDraggingCandidatePos:I

    invoke-direct {p0, v2, v0, v1}, Lcom/android/settings/widget/NotificationCustomView;->onCandidateWidgetChanged(ILcom/android/settings/notificationcustom/QuickWidget;Lcom/android/settings/notificationcustom/QuickWidget;)V

    .line 568
    iget-object v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidateWidgetList:Ljava/util/List;

    iget v3, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidatePos:I

    invoke-interface {v2, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidatePos:I

    invoke-direct {p0, v2, v1, v0}, Lcom/android/settings/widget/NotificationCustomView;->onCandidateWidgetChanged(ILcom/android/settings/notificationcustom/QuickWidget;Lcom/android/settings/notificationcustom/QuickWidget;)V

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "swapCandidateInsideWidgets: dragged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/settings/notificationcustom/QuickWidget;->key:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , targetWidget= "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/settings/notificationcustom/QuickWidget;->key:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationCustomView"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->onWidgetOrderChanged()V

    return-void
.end method

.method private swapWidgetAndCandidate(II)V
    .locals 4

    .line 550
    invoke-direct {p0, p2}, Lcom/android/settings/widget/NotificationCustomView;->getCandidateWidgetByChildViewPosition(I)Lcom/android/settings/notificationcustom/QuickWidget;

    move-result-object v0

    .line 551
    iget-object v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mNotificationList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notificationcustom/QuickWidget;

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "swapWidgetAndCandidate: candidateWidget = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/settings/notificationcustom/QuickWidget;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , targetWidget= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/settings/notificationcustom/QuickWidget;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationCustomView"

    invoke-static {v3, v2}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mNotificationList:Ljava/util/List;

    invoke-interface {v2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidateWidgetList:Ljava/util/List;

    invoke-interface {p1, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notificationcustom/QuickWidget;

    .line 557
    invoke-direct {p0, p2, p1, v1}, Lcom/android/settings/widget/NotificationCustomView;->onCandidateWidgetChanged(ILcom/android/settings/notificationcustom/QuickWidget;Lcom/android/settings/notificationcustom/QuickWidget;)V

    .line 558
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->onWidgetOrderChanged()V

    return-void
.end method

.method private swapWidgetInGridView()V
    .locals 4

    .line 582
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mNotificationList:Ljava/util/List;

    iget v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewItemPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notificationcustom/QuickWidget;

    .line 583
    iget-object v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mNotificationList:Ljava/util/List;

    iget v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewEndItemPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notificationcustom/QuickWidget;

    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "swapWidgetInGridView: beginWidget = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/settings/notificationcustom/QuickWidget;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , endWidget = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/settings/notificationcustom/QuickWidget;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationCustomView"

    invoke-static {v3, v2}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mNotificationList:Ljava/util/List;

    iget v3, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewItemPos:I

    invoke-interface {v2, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 586
    iget-object v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mNotificationList:Ljava/util/List;

    iget v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewEndItemPos:I

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 587
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->onWidgetOrderChanged()V

    return-void
.end method

.method private updateView()V
    .locals 0

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 430
    iget-boolean v0, p0, Lcom/android/settings/widget/NotificationCustomView;->isAnimPlaying:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 434
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    goto/16 :goto_1

    .line 455
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 456
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 457
    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastX:I

    .line 458
    iput v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastY:I

    .line 459
    iget-boolean v3, p0, Lcom/android/settings/widget/NotificationCustomView;->mIsDragCandidate:Z

    if-nez v3, :cond_2

    goto/16 :goto_1

    .line 463
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/android/settings/widget/NotificationCustomView;->drawDragViews(II)V

    .line 464
    invoke-direct {p0, v0, v1}, Lcom/android/settings/widget/NotificationCustomView;->overlayGridViewItemIfNeed(II)V

    .line 466
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->allowCandidateExchangeSelfInside()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 467
    invoke-direct {p0, v0, v1}, Lcom/android/settings/widget/NotificationCustomView;->overlayCandidateItemIfNeed(II)V

    :cond_3
    return v2

    .line 474
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastX:I

    .line 475
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastY:I

    .line 476
    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastY:I

    iget v3, p0, Lcom/android/settings/widget/NotificationCustomView;->mDy:I

    neg-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastY:I

    .line 477
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 478
    iget-boolean v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mIsDragCandidate:Z

    if-nez v0, :cond_5

    goto/16 :goto_1

    .line 481
    :cond_5
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    iget p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastX:I

    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDx:I

    add-int v4, p1, v0

    .line 484
    iget p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastY:I

    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDy:I

    add-int v5, p1, v0

    .line 486
    iget p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mDraggingCandidatePos:I

    if-eq p1, v1, :cond_8

    .line 487
    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewItemPos:I

    if-eq v0, v1, :cond_6

    .line 489
    invoke-direct {p0, v0}, Lcom/android/settings/widget/NotificationCustomView;->getDragGridViewItemIcon(I)Landroid/widget/ImageView;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->getRectInParent(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 490
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    .line 491
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    const/4 v8, 0x0

    move-object v3, p0

    .line 492
    invoke-direct/range {v3 .. v8}, Lcom/android/settings/widget/NotificationCustomView;->moveDragViewAnim(IIIILandroid/view/animation/Animation$AnimationListener;)V

    .line 493
    iget p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewItemPos:I

    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDraggingCandidatePos:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/NotificationCustomView;->moveWidgetToCandidateAnim(II)V

    goto :goto_0

    .line 495
    :cond_6
    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidatePos:I

    if-eq v0, v1, :cond_7

    if-eq p1, v0, :cond_7

    .line 497
    invoke-direct {p0, v0}, Lcom/android/settings/widget/NotificationCustomView;->getCandidateViewIcon(I)Landroid/widget/ImageView;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->getRectInParent(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 498
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    .line 499
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    const/4 v8, 0x0

    move-object v3, p0

    .line 500
    invoke-direct/range {v3 .. v8}, Lcom/android/settings/widget/NotificationCustomView;->moveDragViewAnim(IIIILandroid/view/animation/Animation$AnimationListener;)V

    .line 501
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->animExchangeCandidateWidgetInside()V

    goto :goto_0

    .line 504
    :cond_7
    iget p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mDraggingCandidatePos:I

    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->getCandidateViewIcon(I)Landroid/widget/ImageView;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->getRectInParent(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 505
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    .line 506
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    .line 507
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->getMoveDragViewBackAnimListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v8

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/widget/NotificationCustomView;->moveDragViewAnim(IIIILandroid/view/animation/Animation$AnimationListener;)V

    :cond_8
    :goto_0
    return v2

    .line 437
    :cond_9
    iget-boolean v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mIsDragCandidate:Z

    if-eqz v0, :cond_a

    goto :goto_1

    .line 440
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastX:I

    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mStartX:I

    .line 441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastY:I

    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mStartY:I

    .line 443
    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mStartX:I

    iget v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mStartY:I

    invoke-direct {p0, v0, v2}, Lcom/android/settings/widget/NotificationCustomView;->getPositionOfCandidateIcon(II)I

    move-result v0

    .line 444
    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidatePos:I

    .line 445
    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDraggingCandidatePos:I

    .line 447
    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidatePos:I

    if-eq v0, v1, :cond_b

    .line 448
    new-instance v1, Lcom/android/settings/widget/NotificationCustomView$LongPressedThread;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/widget/NotificationCustomView$LongPressedThread;-><init>(Lcom/android/settings/widget/NotificationCustomView;I)V

    iput-object v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mLongPressedThread:Lcom/android/settings/widget/NotificationCustomView$LongPressedThread;

    .line 449
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mLongPressedThread:Lcom/android/settings/widget/NotificationCustomView$LongPressedThread;

    iget-wide v2, p0, Lcom/android/settings/widget/NotificationCustomView;->LONG_PRESS_TRIGGER_TIME:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 514
    :cond_b
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public isDefaultWidgetOrder()Z
    .locals 3

    .line 288
    invoke-static {}, Lcom/android/settings/widget/NotificationCustomView;->isAdditionalOrderSupport()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/widget/NotificationCustomView;->getCurrentAdditionalQuickWidgetSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->getDefaultAdditionalOrderSettings()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/widget/NotificationCustomView;->getCurrentQuickWidgetSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->getDefaultOrderSettings()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public onDragEnd(I)V
    .locals 9

    const/4 v0, 0x1

    .line 1085
    iput-boolean v0, p0, Lcom/android/settings/widget/NotificationCustomView;->isAnimPlaying:Z

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1087
    iget p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewItemPos:I

    :cond_0
    if-eq p1, v0, :cond_3

    .line 1090
    iget v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastX:I

    iget v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mDx:I

    add-int v4, v1, v2

    .line 1091
    iget v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastY:I

    iget v2, p0, Lcom/android/settings/widget/NotificationCustomView;->mDy:I

    add-int v5, v1, v2

    .line 1096
    iget v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidatePos:I

    if-eq v1, v0, :cond_1

    .line 1097
    invoke-direct {p0, v1}, Lcom/android/settings/widget/NotificationCustomView;->getCandidateViewIcon(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/widget/NotificationCustomView;->getRectInParent(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    .line 1099
    iget v3, p0, Lcom/android/settings/widget/NotificationCustomView;->mCandidatePos:I

    invoke-direct {p0, p1, v3}, Lcom/android/settings/widget/NotificationCustomView;->moveCandidateToWidgetAnim(II)V

    move-object v8, v2

    goto :goto_1

    .line 1100
    :cond_1
    iget v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewEndItemPos:I

    if-eq v1, v0, :cond_2

    if-eq v1, p1, :cond_2

    .line 1101
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragAdapter:Lcom/android/settings/widget/NotificationCustomView$DragAdapter;

    iget v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewItemPos:I

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/NotificationCustomView$DragAdapter;->setHideItem(I)V

    .line 1102
    iget p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewEndItemPos:I

    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->getDragGridViewItemIcon(I)Landroid/widget/ImageView;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->getRectInParent(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1103
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->getRestoreDragGridViewItemAnim()Landroid/view/animation/Animation$AnimationListener;

    move-result-object p1

    .line 1104
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->moveWidgetAnim()V

    .line 1105
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->swapWidgetInGridView()V

    goto :goto_0

    .line 1107
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->getDragGridViewItemIcon(I)Landroid/widget/ImageView;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->getRectInParent(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1108
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->getRestoreDragGridViewItemAnim()Landroid/view/animation/Animation$AnimationListener;

    move-result-object p1

    :goto_0
    move-object v8, p1

    .line 1110
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    .line 1111
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    move-object v3, p0

    .line 1113
    invoke-direct/range {v3 .. v8}, Lcom/android/settings/widget/NotificationCustomView;->moveDragViewAnim(IIIILandroid/view/animation/Animation$AnimationListener;)V

    .line 1115
    :cond_3
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1116
    iput v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewItemPos:I

    const/4 p1, 0x0

    .line 1117
    iput-boolean p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mIsDragGridViewItem:Z

    return-void
.end method

.method public onDragStart(III)V
    .locals 2

    .line 1059
    iput p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewItemPos:I

    .line 1060
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragAdapter:Lcom/android/settings/widget/NotificationCustomView$DragAdapter;

    iget v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mGridViewItemPos:I

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/NotificationCustomView$DragAdapter;->setHideItem(I)V

    .line 1061
    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->getDragGridViewItemIcon(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mTargetView:Landroid/widget/ImageView;

    .line 1062
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mNotificationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notificationcustom/QuickWidget;

    .line 1063
    invoke-direct {p0, p2, p3}, Lcom/android/settings/widget/NotificationCustomView;->calculateDxDy(II)V

    .line 1064
    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->createDragView(Lcom/android/settings/notificationcustom/QuickWidget;)V

    .line 1065
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->handleAppNameVisibility()V

    const/4 p1, 0x1

    .line 1066
    iput-boolean p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mIsDragGridViewItem:Z

    return-void
.end method

.method public onDraging(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1071
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1072
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 1074
    iget-object v1, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragGridView:Lcom/android/settings/widget/DragGridView;

    invoke-direct {p0, v1}, Lcom/android/settings/widget/NotificationCustomView;->getRectInParent(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1075
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    .line 1076
    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    .line 1078
    invoke-direct {p0, v0, p1}, Lcom/android/settings/widget/NotificationCustomView;->drawDragViews(II)V

    .line 1079
    invoke-direct {p0, v0, p1}, Lcom/android/settings/widget/NotificationCustomView;->overlayCandidateItemIfNeed(II)V

    .line 1080
    invoke-direct {p0, v0, p1}, Lcom/android/settings/widget/NotificationCustomView;->overlayWidget(II)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 987
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 988
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragView:Landroid/widget/ImageView;

    iget p2, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastmovell:I

    iget p3, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastmovett:I

    iget p4, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastmoverr:I

    iget p5, p0, Lcom/android/settings/widget/NotificationCustomView;->mLastmovebb:I

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 989
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameView:Landroid/widget/TextView;

    iget p2, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameLeft:I

    iget p3, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameTop:I

    iget p4, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameRight:I

    iget p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mAppNameBottom:I

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 189
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->updateView()V

    return-void
.end method

.method public resetSettings()V
    .locals 2

    .line 346
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->getDefaultOrderSettings()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->getDefaultAdditionalOrderSettings()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/widget/NotificationCustomView;->saveWidgetButtonsAndNotify(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-direct {p0, v0}, Lcom/android/settings/widget/NotificationCustomView;->loadGridViewData(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView;->mDragAdapter:Lcom/android/settings/widget/NotificationCustomView$DragAdapter;

    invoke-virtual {v0}, Lcom/android/settings/widget/NotificationCustomView$DragAdapter;->notifyDataSetChanged()V

    .line 351
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationCustomView;->loadCandidateWidgetData()V

    .line 353
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView;->mWidgetOrderChangedListener:Lcom/android/settings/widget/NotificationCustomView$WidgetOrderChangedListener;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 354
    invoke-interface {p0, v0}, Lcom/android/settings/widget/NotificationCustomView$WidgetOrderChangedListener;->onWidgetOrderChanged(Z)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/settings/widget/NotificationCustomView$WidgetOrderChangedListener;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/android/settings/widget/NotificationCustomView;->mWidgetOrderChangedListener:Lcom/android/settings/widget/NotificationCustomView$WidgetOrderChangedListener;

    return-void
.end method
