.class public Lcom/smartisanos/smengine/SceneNode;
.super Ljava/lang/Object;
.source "SceneNode.java"


# static fields
.field public static final ANIMATION_END:I = 0x0

.field public static final ANIMATION_PAUSE:I = 0x2

.field public static final ANIMATION_STARTED:I = 0x1

.field static final CLICKABLE:I = 0x4000

.field protected static final FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field private static final FLAG_SPLIT_MOTION_EVENTS:I = 0x200000

.field public static final GONE:I = 0x8

.field public static final INVISIBLE:I = 0x4

.field static final LONG_CLICKABLE:I = 0x200000

.field static final PFLAG_CANCEL_NEXT_UP_EVENT:I = 0x4000000

.field private static final PFLAG_PREPRESSED:I = 0x2000000

.field private static final PFLAG_PRESSED:I = 0x4000

.field public static final SELECTED_STATE:I = 0x1

.field private static final TMP_DATA_LEN:I = 0x30

.field public static final UNSELECTED_STATE:I = 0x0

.field protected static final UPDATE_DISPLAY:I = 0x2

.field protected static final UPDATE_TRANSFORM:I = 0x1

.field static final VISIBILITY_MASK:I = 0xc

.field public static final VISIBLE:I

.field private static final log:Lcom/smartisanos/launcher/va;

.field private static mTmpData:[F


# instance fields
.field public handleTouchDown:Z

.field private isClear:Z

.field isDraw:Z

.field private mAdjustForShadowLen:F

.field private mCancelClickAndLongPress:Z

.field private mChildren:Ljava/util/ArrayList;

.field private mCollideAlways:Z

.field protected mCollideListener:Lcom/smartisanos/smengine/V;

.field private mCurrentAnimationState:I

.field private mCurrentInteractionState:I

.field protected mDoubleTapListener:Lcom/smartisanos/smengine/W;

.field private mDownYForHandleFlingUpGestureConflict:F

.field public mDragPointX:F

.field public mDragPointY:F

.field private mFirstTouchTarget:Lcom/smartisanos/smengine/ia;

.field private mFixedCenter:Lcom/smartisanos/smengine/a/j;

.field private mForceDispatchTouchToView:Z

.field private mForceRenderTag:Z

.field private mGroupFlags:I

.field private mHasPerformedLongPress:Z

.field protected mIsCancelForSetPress:Z

.field private mIsCulled:Z

.field private mIsUpdateBoundingVolume:Z

.field private volatile mIsVisible:Z

.field private mLayer:I

.field private mLightColor:Lcom/smartisanos/smengine/a/k;

.field mListenerInfo:Lcom/smartisanos/smengine/X;

.field private mLocalBoundingVolume:Lcom/smartisanos/smengine/j;

.field private mLocalTransform:Lcom/smartisanos/smengine/a/h;

.field private mLocalTranslate:Lcom/smartisanos/smengine/a/j;

.field protected mLongPressListener:Lcom/smartisanos/smengine/Y;

.field private mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

.field public mMatrixArrayNum:I

.field private mMatrixForRender:Lcom/smartisanos/smengine/a/f;

.field private mMeshData:Lcom/smartisanos/smengine/y;

.field private mName:Ljava/lang/String;

.field private mNeedDetectCollide:Z

.field private mParent:Lcom/smartisanos/smengine/SceneNode;

.field private mPendingCheckForLongPress:Lcom/smartisanos/smengine/U;

.field private mPendingCheckForLongPressEvent:Lcom/smartisanos/smengine/n;

.field private mPerformClick:Lcom/smartisanos/smengine/da;

.field public mPressure:F

.field private mPrivateFlags:I

.field private mRUParam:Lcom/smartisanos/smengine/K;

.field private mRenderQueue:I

.field private mRenderState:Lcom/smartisanos/smengine/L;

.field private mRenderTarget:Lcom/smartisanos/smengine/N;

.field protected mScaleListener:Lcom/smartisanos/smengine/ea;

.field private mScaleRotatePivot:Lcom/smartisanos/smengine/a/j;

.field protected mSceneNodeTransformNative:J

.field private mSelfCamera:Lcom/smartisanos/smengine/Camera;

.field protected mSingleTapListener:Lcom/smartisanos/smengine/fa;

.field private mSkewDataList:Ljava/util/ArrayList;

.field private mSubLayer:I

.field private mTMotionEvent:Lcom/smartisanos/smengine/va;

.field private mTextureMapName:[Ljava/lang/String;

.field protected mTouchDownListener:Lcom/smartisanos/smengine/ga;

.field protected mTouchListener:Lcom/smartisanos/smengine/ha;

.field protected mTouchSlop:I

.field public mTouchX:F

.field public mTouchY:F

.field private mTranslatePivot:Lcom/smartisanos/smengine/a/j;

.field private mUnsetPressedState:Lcom/smartisanos/smengine/ja;

.field protected mUpdateFlags:I

.field private mUserInteractionEnable:Z

.field private mViewFlags:I

.field private mViewPort:Lcom/smartisanos/smengine/Ga;

.field private mWorldBoundingVolume:Lcom/smartisanos/smengine/j;

.field protected mWorldMatrix:Lcom/smartisanos/smengine/a/f;

.field private mWorldTransform:Lcom/smartisanos/smengine/a/h;

.field private openlog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/smengine/SceneNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    const/16 v0, 0x30

    new-array v0, v0, [F

    .line 2
    sput-object v0, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/a/h;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/h;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/a/h;

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/h;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/h;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mWorldTransform:Lcom/smartisanos/smengine/a/h;

    .line 4
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTranslatePivot:Lcom/smartisanos/smengine/a/j;

    .line 5
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/a/j;

    .line 6
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/a/j;

    .line 7
    new-instance v0, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mWorldMatrix:Lcom/smartisanos/smengine/a/f;

    .line 8
    new-instance v0, Lcom/smartisanos/smengine/L;

    invoke-direct {v0}, Lcom/smartisanos/smengine/L;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderState:Lcom/smartisanos/smengine/L;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mLayer:I

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/smartisanos/smengine/SceneNode;->mUserInteractionEnable:Z

    .line 13
    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mUpdateFlags:I

    .line 14
    iput-boolean v1, p0, Lcom/smartisanos/smengine/SceneNode;->mIsVisible:Z

    .line 15
    iput-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->mIsCulled:Z

    .line 16
    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mCurrentInteractionState:I

    .line 17
    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mCurrentAnimationState:I

    .line 18
    iput-boolean v1, p0, Lcom/smartisanos/smengine/SceneNode;->mIsUpdateBoundingVolume:Z

    .line 19
    iput-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->isClear:Z

    .line 20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mSkewDataList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 21
    iput-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mFixedCenter:Lcom/smartisanos/smengine/a/j;

    .line 22
    iput-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->mForceRenderTag:Z

    .line 23
    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMatrixArrayNum:I

    .line 24
    iput-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->handleTouchDown:Z

    .line 25
    new-instance v2, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/a/f;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mMatrixForRender:Lcom/smartisanos/smengine/a/f;

    .line 26
    new-instance v2, Lcom/smartisanos/smengine/K;

    invoke-direct {v2}, Lcom/smartisanos/smengine/K;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mRUParam:Lcom/smartisanos/smengine/K;

    .line 27
    new-instance v2, Lcom/smartisanos/smengine/a/k;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mLightColor:Lcom/smartisanos/smengine/a/k;

    .line 28
    iput v3, p0, Lcom/smartisanos/smengine/SceneNode;->mAdjustForShadowLen:F

    .line 29
    iput-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->isDraw:Z

    .line 30
    iput-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->openlog:Z

    const/high16 v2, 0x200000

    .line 31
    iput v2, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    .line 32
    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    .line 33
    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    .line 34
    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchSlop:I

    const/4 v2, 0x0

    .line 35
    iput v2, p0, Lcom/smartisanos/smengine/SceneNode;->mDragPointX:F

    .line 36
    iput v2, p0, Lcom/smartisanos/smengine/SceneNode;->mDragPointY:F

    .line 37
    iput-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->mIsCancelForSetPress:Z

    .line 38
    iput v2, p0, Lcom/smartisanos/smengine/SceneNode;->mDownYForHandleFlingUpGestureConflict:F

    .line 39
    iput-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->mForceDispatchTouchToView:Z

    .line 40
    iput-boolean v1, p0, Lcom/smartisanos/smengine/SceneNode;->mNeedDetectCollide:Z

    .line 41
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mName:Ljava/lang/String;

    .line 42
    sget p1, Lcom/smartisanos/launcher/data/Constants;->TOUCH_SLOP:I

    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchSlop:I

    .line 43
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setMotionEventSplittingEnabled(Z)V

    .line 44
    invoke-static {}, Lcom/smartisanos/smengine/SceneNode;->nCreateNative()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    return-void
.end method

.method static synthetic access$300(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    return-object p0
.end method

.method static synthetic access$400()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic access$502(Lcom/smartisanos/smengine/SceneNode;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/SceneNode;->mHasPerformedLongPress:Z

    return p1
.end method

.method private addTouchTarget(Lcom/smartisanos/smengine/SceneNode;I)Lcom/smartisanos/smengine/ia;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/smartisanos/smengine/ia;->a(Lcom/smartisanos/smengine/SceneNode;I)Lcom/smartisanos/smengine/ia;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/ia;

    iput-object p2, p1, Lcom/smartisanos/smengine/ia;->next:Lcom/smartisanos/smengine/ia;

    .line 3
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/ia;

    return-object p1
.end method

.method private static canViewReceivePointerEvents(Lcom/smartisanos/smengine/SceneNode;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result p0

    return p0
.end method

.method private cancelAndClearTouchTargets(Lcom/smartisanos/smengine/va;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/ia;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x3

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0, v0}, Lcom/smartisanos/smengine/va;->c(IFF)Lcom/smartisanos/smengine/va;

    move-result-object p1

    const/4 v0, 0x1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/ia;

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    iget-object v2, v1, Lcom/smartisanos/smengine/ia;->child:Lcom/smartisanos/smengine/SceneNode;

    invoke-static {v2}, Lcom/smartisanos/smengine/SceneNode;->resetCancelNextUpFlag(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 5
    iget-object v1, v1, Lcom/smartisanos/smengine/ia;->next:Lcom/smartisanos/smengine/ia;

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/smengine/SceneNode;->clearTouchTargets()V

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->recycle()V

    :cond_2
    return-void
.end method

.method private cancelTouchTarget(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/ia;

    const/4 v1, 0x0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    if-eqz v1, :cond_2

    .line 2
    iget-object v2, v1, Lcom/smartisanos/smengine/ia;->next:Lcom/smartisanos/smengine/ia;

    .line 3
    iget-object v3, v1, Lcom/smartisanos/smengine/ia;->child:Lcom/smartisanos/smengine/SceneNode;

    if-ne v3, p1, :cond_1

    if-nez v0, :cond_0

    .line 4
    iput-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/ia;

    goto :goto_1

    .line 5
    :cond_0
    iput-object v2, v0, Lcom/smartisanos/smengine/ia;->next:Lcom/smartisanos/smengine/ia;

    .line 6
    :goto_1
    invoke-virtual {v1}, Lcom/smartisanos/smengine/ia;->recycle()V

    const/4 p0, 0x3

    const/4 v0, 0x0

    .line 7
    invoke-static {p0, v0, v0}, Lcom/smartisanos/smengine/va;->c(IFF)Lcom/smartisanos/smengine/va;

    move-result-object p0

    .line 8
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->dispatchTouchEvent(Lcom/smartisanos/smengine/va;)Z

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/smengine/va;->recycle()V

    return-void

    :cond_1
    move-object v0, v1

    move-object v1, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private checkForLongClick(IFF)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->mHasPerformedLongPress:Z

    .line 3
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPendingCheckForLongPress:Lcom/smartisanos/smengine/U;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/smartisanos/smengine/U;

    invoke-direct {v0, p0}, Lcom/smartisanos/smengine/U;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPendingCheckForLongPress:Lcom/smartisanos/smengine/U;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPendingCheckForLongPress:Lcom/smartisanos/smengine/U;

    iput p2, v0, Lcom/smartisanos/smengine/U;->MG:F

    .line 6
    iput p3, v0, Lcom/smartisanos/smengine/U;->NG:F

    .line 7
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p2

    sub-int/2addr p2, p1

    int-to-long p1, p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/smartisanos/smengine/SceneNode;->postDelayed(Ljava/lang/Runnable;J)Lcom/smartisanos/smengine/n;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mPendingCheckForLongPressEvent:Lcom/smartisanos/smengine/n;

    :cond_1
    return-void
.end method

.method private clearTouchTargets()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/ia;

    if-eqz v0, :cond_1

    .line 2
    :goto_0
    iget-object v1, v0, Lcom/smartisanos/smengine/ia;->next:Lcom/smartisanos/smengine/ia;

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/smengine/ia;->recycle()V

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/ia;

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private collideExitAll(Lcom/smartisanos/smengine/l;Lcom/smartisanos/smengine/SceneNode;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/l;->Yj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p0, :cond_1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/l;->Zj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/l;->_j()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->collideExit(Lcom/smartisanos/smengine/l;)I

    return v1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->collideExit(Lcom/smartisanos/smengine/l;)I

    .line 5
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->bt()Lcom/smartisanos/smengine/m;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/smengine/m;->clean()V

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 8
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/SceneNode;

    .line 9
    invoke-direct {v2, p1, p2}, Lcom/smartisanos/smengine/SceneNode;->collideExitAll(Lcom/smartisanos/smengine/l;Lcom/smartisanos/smengine/SceneNode;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private dispatchTransformedTouchEvent(Lcom/smartisanos/smengine/va;ZLcom/smartisanos/smengine/SceneNode;I)Z
    .locals 11

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->_h:Z

    const-string v1, "child != null. "

    const-string v2, "child == null. "

    const-string v3, "dispatchTransformedTouchEvent"

    const-string v4, " "

    if-nez v0, :cond_1

    const-string v0, " cancel = "

    if-eqz p3, :cond_0

    .line 2
    sget-object v5, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v5, v3, v0}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v5, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v5, v3, v0}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v5, 0x3

    if-nez p2, :cond_b

    if-ne v0, v5, :cond_2

    goto/16 :goto_5

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getPointerIdBits()I

    move-result p2

    and-int v0, p2, p4

    .line 10
    sget-boolean v5, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v5, :cond_4

    const-string v5, " newPointerIdBits = "

    const-string v6, " desiredPointerIdBits = "

    const-string v7, " oldPointerIdBits = "

    if-eqz p3, :cond_3

    .line 11
    sget-object v8, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 13
    invoke-virtual {v8, v3, p4}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_3
    sget-object v8, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 16
    invoke-virtual {v8, v3, p4}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    if-nez v0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    if-ne v0, p2, :cond_7

    if-nez p3, :cond_6

    .line 17
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->onTouchEvent(Lcom/smartisanos/smengine/va;)Z

    move-result p0

    goto :goto_2

    .line 18
    :cond_6
    invoke-virtual {p3, p1}, Lcom/smartisanos/smengine/SceneNode;->dispatchTouchEvent(Lcom/smartisanos/smengine/va;)Z

    move-result p0

    :goto_2
    return p0

    .line 19
    :cond_7
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->split(I)Lcom/smartisanos/smengine/va;

    move-result-object p2

    .line 20
    sget-boolean p4, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez p4, :cond_9

    const-string p4, " event.split(newPointerIdBits) newPointerIdBits = "

    if-eqz p3, :cond_8

    .line 21
    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {v2, v3, p1}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 24
    :cond_8
    sget-object v1, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {v1, v3, p1}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_3
    if-nez p3, :cond_a

    .line 27
    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/SceneNode;->onTouchEvent(Lcom/smartisanos/smengine/va;)Z

    move-result p0

    goto :goto_4

    .line 28
    :cond_a
    invoke-virtual {p3, p2}, Lcom/smartisanos/smengine/SceneNode;->dispatchTouchEvent(Lcom/smartisanos/smengine/va;)Z

    move-result p0

    .line 29
    :goto_4
    invoke-virtual {p2}, Lcom/smartisanos/smengine/va;->recycle()V

    return p0

    .line 30
    :cond_b
    :goto_5
    sget-boolean p2, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez p2, :cond_d

    if-eqz p3, :cond_c

    .line 31
    sget-object p2, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send cancel. child != null. "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, v3, p4}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 32
    :cond_c
    sget-object p2, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send cancel. child == null. "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, v3, p4}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_d
    :goto_6
    invoke-virtual {p1, v5}, Lcom/smartisanos/smengine/va;->setAction(I)V

    if-nez p3, :cond_e

    .line 34
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->onTouchEvent(Lcom/smartisanos/smengine/va;)Z

    move-result p0

    goto :goto_7

    .line 35
    :cond_e
    invoke-virtual {p3, p1}, Lcom/smartisanos/smengine/SceneNode;->dispatchTouchEvent(Lcom/smartisanos/smengine/va;)Z

    move-result p0

    .line 36
    :goto_7
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->setAction(I)V

    return p0
.end method

.method private getLocalTransformFromNative(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/a/h;
    .locals 4

    .line 1
    new-instance p0, Lcom/smartisanos/smengine/a/h;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a/h;-><init>()V

    .line 2
    iget-wide v0, p1, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    sget-object p1, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    invoke-static {v0, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->nGetLocalTransform(J[F)V

    .line 3
    sget-object p1, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-virtual {p0, v0, v1, p1}, Lcom/smartisanos/smengine/a/h;->f(FFF)Lcom/smartisanos/smengine/a/h;

    .line 4
    sget-object p1, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v0, 0x3

    aget v0, p1, v0

    const/4 v1, 0x4

    aget v1, p1, v1

    const/4 v2, 0x5

    aget p1, p1, v2

    invoke-virtual {p0, v0, v1, p1}, Lcom/smartisanos/smengine/a/h;->setScale(FFF)Lcom/smartisanos/smengine/a/h;

    .line 5
    sget-object p1, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v0, 0x6

    aget v0, p1, v0

    const/4 v1, 0x7

    aget v1, p1, v1

    const/16 v2, 0x8

    aget v2, p1, v2

    const/16 v3, 0x9

    aget p1, p1, v3

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/smartisanos/smengine/a/h;->h(FFFF)Lcom/smartisanos/smengine/a/h;

    return-object p0
.end method

.method private getTouchTarget(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/ia;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/ia;

    :goto_0
    if-eqz p0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/ia;->child:Lcom/smartisanos/smengine/SceneNode;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/smengine/ia;->next:Lcom/smartisanos/smengine/ia;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getWorldTransformFromNative(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/a/h;
    .locals 4

    .line 1
    new-instance p0, Lcom/smartisanos/smengine/a/h;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a/h;-><init>()V

    .line 2
    iget-wide v0, p1, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    sget-object p1, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    invoke-static {v0, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->nGetWorldTransform(J[F)V

    .line 3
    sget-object p1, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-virtual {p0, v0, v1, p1}, Lcom/smartisanos/smengine/a/h;->f(FFF)Lcom/smartisanos/smengine/a/h;

    .line 4
    sget-object p1, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v0, 0x3

    aget v0, p1, v0

    const/4 v1, 0x4

    aget v1, p1, v1

    const/4 v2, 0x5

    aget p1, p1, v2

    invoke-virtual {p0, v0, v1, p1}, Lcom/smartisanos/smengine/a/h;->setScale(FFF)Lcom/smartisanos/smengine/a/h;

    .line 5
    sget-object p1, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v0, 0x6

    aget v0, p1, v0

    const/4 v1, 0x7

    aget v1, p1, v1

    const/16 v2, 0x8

    aget v2, p1, v2

    const/16 v3, 0x9

    aget p1, p1, v3

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/smartisanos/smengine/a/h;->h(FFFF)Lcom/smartisanos/smengine/a/h;

    return-object p0
.end method

.method private static native nCalculateCameraMatrixData(JJ)V
.end method

.method private static native nCalculateLocalTranslateData(J)V
.end method

.method private static native nCalculateMVPMatrixArrayData(JJJIFFZZI)V
.end method

.method private static native nCalculateMVPMatrixArrayDataWithChildZ(JJJIFI)V
.end method

.method private static native nCalculateMVPMatrixData(JJI)V
.end method

.method private static native nCalculateModelSpaceLightDirArrayData(JJIFFF)V
.end method

.method private static native nCalculateProjectionMatrixData(JJ)V
.end method

.method private static native nCalculateViewMatrixData(JJ)V
.end method

.method private static native nCalculateWorldMatrixData(J)V
.end method

.method private static native nChangeAncestor(JJ)Z
.end method

.method private static native nCreateNative()J
.end method

.method protected static native nCullWithCameraRect(JJ)Z
.end method

.method private static native nForceUpdateWorldBoundingVolume(JJ)V
.end method

.method private static native nForceUpdateWorldTransforms(JJ)V
.end method

.method protected static native nGetCornerPointScreenCoord(JJ[F)V
.end method

.method private static native nGetLocalBoundingRect(J[F)Z
.end method

.method private static native nGetLocalTransform(J[F)V
.end method

.method private static native nGetLocation(J[F)V
.end method

.method private static native nGetRotation(J[F)V
.end method

.method private static native nGetScale(J[F)V
.end method

.method protected static native nGetSize(J[F)V
.end method

.method protected static native nGetWorldBoundingRect(J[F)Z
.end method

.method private static native nGetWorldMatrix(J[F)V
.end method

.method protected static native nGetWorldScale(J[F)V
.end method

.method protected static native nGetWorldTransform(J[F)V
.end method

.method protected static native nGetWorldTranslate(J[F)V
.end method

.method private static native nIsCollidedWith(JJZ)Z
.end method

.method protected static native nIsInWindow(JFFF)Z
.end method

.method private static native nIsIntersectWith(JJZ)Z
.end method

.method private static native nIsPointInBoundingVolume(JFFF)Z
.end method

.method private static native nReleaseNative(J)V
.end method

.method protected static native nSetCameraMatrixDataToShader(JI)V
.end method

.method private static native nSetLocalBoundingVolume(JFFFF)V
.end method

.method protected static native nSetLocalTransform(J[F)V
.end method

.method protected static native nSetLocalTranslate(JFFF)V
.end method

.method protected static native nSetLocalTranslateDataToShader(JI)V
.end method

.method protected static native nSetMVPMatrixArrayDataToShader(JI)V
.end method

.method private static native nSetMVPMatrixArrayNum(JI)V
.end method

.method protected static native nSetMVPMatrixDataToShader(JI)V
.end method

.method protected static native nSetModelSpaceLightDirDataToShader(JI)V
.end method

.method private static native nSetRotation(JFFFF)V
.end method

.method private static native nSetScale(JFFF)V
.end method

.method private static native nSetScaleRotatePivot(JFFF)V
.end method

.method private static native nSetTranslate(JFFF)V
.end method

.method private static native nSetTranslatePivot(JFFF)V
.end method

.method protected static native nSetWorldMatrixDataToShader(JI)V
.end method

.method private static native nUpdateWorldBoundingVolume(JJ)V
.end method

.method private static native nUpdateWorldTransforms(JJ)V
.end method

.method private removeLongPressCallback()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPendingCheckForLongPressEvent:Lcom/smartisanos/smengine/n;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->removeCallbacks(Lcom/smartisanos/smengine/n;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPendingCheckForLongPressEvent:Lcom/smartisanos/smengine/n;

    :cond_0
    return-void
.end method

.method private removePointersFromTouchTargets(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/ia;

    const/4 v1, 0x0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_0
    if-eqz v1, :cond_2

    .line 2
    iget-object v2, v1, Lcom/smartisanos/smengine/ia;->next:Lcom/smartisanos/smengine/ia;

    .line 3
    iget v3, v1, Lcom/smartisanos/smengine/ia;->pointerIdBits:I

    and-int v4, v3, p1

    if-eqz v4, :cond_1

    not-int v4, p1

    and-int/2addr v3, v4

    .line 4
    iput v3, v1, Lcom/smartisanos/smengine/ia;->pointerIdBits:I

    .line 5
    iget v3, v1, Lcom/smartisanos/smengine/ia;->pointerIdBits:I

    if-nez v3, :cond_1

    if-nez v0, :cond_0

    .line 6
    iput-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/ia;

    goto :goto_1

    .line 7
    :cond_0
    iput-object v2, v0, Lcom/smartisanos/smengine/ia;->next:Lcom/smartisanos/smengine/ia;

    .line 8
    :goto_1
    invoke-virtual {v1}, Lcom/smartisanos/smengine/ia;->recycle()V

    goto :goto_2

    :cond_1
    move-object v0, v1

    :goto_2
    move-object v1, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static resetCancelNextUpFlag(Lcom/smartisanos/smengine/SceneNode;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const v1, -0x4000001

    and-int/2addr v0, v1

    .line 2
    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private resetTouchState()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/smengine/SceneNode;->clearTouchTargets()V

    .line 2
    invoke-static {p0}, Lcom/smartisanos/smengine/SceneNode;->resetCancelNextUpFlag(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 3
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    return-void
.end method

.method private setLocalTransform(Lcom/smartisanos/smengine/a/h;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/a/h;->f([F)V

    .line 2
    iget-wide p0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    sget-object v0, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    invoke-static {p0, p1, v0}, Lcom/smartisanos/smengine/SceneNode;->nSetLocalTransform(J[F)V

    return-void
.end method

.method private setLocalTranslate(FFF)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 3
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->nSetLocalTranslate(JFFF)V

    return-void
.end method

.method private setLocalTranslate(Lcom/smartisanos/smengine/a/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/a/j;

    return-void
.end method


# virtual methods
.method public addChild(Lcom/smartisanos/smengine/SceneNode;)I
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eq v0, p0, :cond_1

    if-eq p1, p0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->removeChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setParent(Lcom/smartisanos/smengine/SceneNode;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->setTransformUpdate()V

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "child cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addChildAt(Lcom/smartisanos/smengine/SceneNode;I)I
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eq v0, p0, :cond_1

    if-eq p1, p0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->removeChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setParent(Lcom/smartisanos/smengine/SceneNode;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->setTransformUpdate()V

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method protected addMeshToRenderUnit(Lcom/smartisanos/smengine/I;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/y;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/I;->c(Lcom/smartisanos/smengine/y;)V

    const/4 p0, 0x0

    throw p0
.end method

.method protected calculateCameraMatrixData(Lcom/smartisanos/smengine/Camera;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-wide p0, p1, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    invoke-static {v0, v1, p0, p1}, Lcom/smartisanos/smengine/SceneNode;->nCalculateCameraMatrixData(JJ)V

    return-void
.end method

.method protected calculateLocalTranslateData()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->nCalculateLocalTranslateData(J)V

    return-void
.end method

.method protected calculateMVPMatrixArrayData(Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/SceneNode;IFFZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/nb;->kh()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    move v15, v3

    if-nez v2, :cond_1

    .line 3
    iget-wide v4, v0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-wide v6, v1, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    const-wide/16 v8, -0x1

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    invoke-static/range {v4 .. v15}, Lcom/smartisanos/smengine/SceneNode;->nCalculateMVPMatrixArrayData(JJJIFFZZI)V

    goto :goto_1

    .line 4
    :cond_1
    iget-wide v4, v0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-wide v6, v1, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    iget-wide v8, v2, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    invoke-static/range {v4 .. v15}, Lcom/smartisanos/smengine/SceneNode;->nCalculateMVPMatrixArrayData(JJJIFFZZI)V

    :goto_1
    return-void
.end method

.method protected calculateMVPMatrixArrayDataWithChildZ(Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/SceneNode;IF)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/nb;->kh()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    move v9, v0

    .line 3
    iget-wide v1, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-wide v3, p1, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    iget-wide v5, p2, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    move v7, p3

    move v8, p4

    invoke-static/range {v1 .. v9}, Lcom/smartisanos/smengine/SceneNode;->nCalculateMVPMatrixArrayDataWithChildZ(JJJIFI)V

    return-void
.end method

.method public calculateMVPMatrixData(Lcom/smartisanos/smengine/Camera;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/nb;->kh()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 3
    :goto_0
    iget-wide v1, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-wide p0, p1, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    invoke-static {v1, v2, p0, p1, v0}, Lcom/smartisanos/smengine/SceneNode;->nCalculateMVPMatrixData(JJI)V

    return-void
.end method

.method public calculateModeSpaceLightDirArrayData(Lcom/smartisanos/smengine/SceneNode;I)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/smengine/mymaterial/t;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/mymaterial/t;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/t;->St()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 3
    iget-wide v1, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-wide v3, p1, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget p0, v0, Lcom/smartisanos/smengine/a/j;->x:F

    neg-float v6, p0

    iget p0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    neg-float v7, p0

    iget p0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    neg-float v8, p0

    move v5, p2

    invoke-static/range {v1 .. v8}, Lcom/smartisanos/smengine/SceneNode;->nCalculateModelSpaceLightDirArrayData(JJIFFF)V

    :cond_0
    return-void
.end method

.method protected calculateProjectionMatrixData(Lcom/smartisanos/smengine/Camera;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-wide p0, p1, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    invoke-static {v0, v1, p0, p1}, Lcom/smartisanos/smengine/SceneNode;->nCalculateProjectionMatrixData(JJ)V

    return-void
.end method

.method protected calculateViewMatrixData(Lcom/smartisanos/smengine/Camera;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-wide p0, p1, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    invoke-static {v0, v1, p0, p1}, Lcom/smartisanos/smengine/SceneNode;->nCalculateViewMatrixData(JJ)V

    return-void
.end method

.method protected calculateWorldMatrixData()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->nCalculateWorldMatrixData(J)V

    return-void
.end method

.method public changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->convertTransfromToAncestor(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/a/h;

    move-result-object v0

    .line 4
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransformFromNative(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/a/h;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/h;->inverse()Lcom/smartisanos/smengine/a/h;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/a/h;->a(Lcom/smartisanos/smengine/a/h;)Lcom/smartisanos/smengine/a/h;

    .line 7
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 8
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object p1

    .line 9
    iget-object v1, p1, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    .line 10
    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/h;->Bt()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 11
    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/h;->getScale()Lcom/smartisanos/smengine/a/j;

    .line 12
    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLocalTransform(Lcom/smartisanos/smengine/a/h;)V

    .line 13
    iget v0, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {p0, v0, v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setLocalTranslate(FFF)V

    .line 14
    invoke-virtual {p1}, Lcom/smartisanos/smengine/d/f;->release()V

    .line 15
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public clear(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setParent(Lcom/smartisanos/smengine/SceneNode;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setOnClickListener(Lcom/smartisanos/smengine/aa;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setOnLongClickListener(Lcom/smartisanos/smengine/ba;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setOnTouchListener(Lcom/smartisanos/smengine/ca;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setCollideListener(Lcom/smartisanos/smengine/V;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setScaleListener(Lcom/smartisanos/smengine/ea;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setTouchListener(Lcom/smartisanos/smengine/ha;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setSingleTapListener(Lcom/smartisanos/smengine/fa;)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setDoubleTapListener(Lcom/smartisanos/smengine/W;)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLongPressListener(Lcom/smartisanos/smengine/Y;)V

    .line 12
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v1}, Lcom/smartisanos/smengine/mymaterial/f;->It()V

    .line 14
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/mymaterial/f;->clear()V

    .line 15
    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/y;

    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/y;->za(Z)V

    .line 18
    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/y;

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 20
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/SceneNode;

    .line 21
    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->removeAllChildren()V

    .line 23
    iput-boolean v1, p0, Lcom/smartisanos/smengine/SceneNode;->isClear:Z

    return-void
.end method

.method public clearSkewData()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mSkewDataList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public collideEnter(Lcom/smartisanos/smengine/l;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mCollideListener:Lcom/smartisanos/smengine/V;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->bt()Lcom/smartisanos/smengine/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/m;->bk()Lcom/smartisanos/smengine/l;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/l;->d(Lcom/smartisanos/smengine/l;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/smengine/l;->Yj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->collideExit(Lcom/smartisanos/smengine/l;)I

    .line 6
    :cond_0
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/l;->wa(Z)V

    .line 7
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mCollideListener:Lcom/smartisanos/smengine/V;

    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/V;->a(Lcom/smartisanos/smengine/l;)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/l;->wa(Z)V

    .line 9
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mCollideListener:Lcom/smartisanos/smengine/V;

    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/V;->a(Lcom/smartisanos/smengine/l;)I

    move-result p0

    :goto_0
    if-nez p0, :cond_2

    .line 10
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->bt()Lcom/smartisanos/smengine/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/m;->e(Lcom/smartisanos/smengine/l;)V

    :cond_2
    return p0

    :cond_3
    return v1
.end method

.method public collideExit(Lcom/smartisanos/smengine/l;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mCollideListener:Lcom/smartisanos/smengine/V;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/V;->b(Lcom/smartisanos/smengine/l;)I

    :cond_0
    return v0
.end method

.method public collideWith(Lcom/smartisanos/smengine/SceneNode;)I
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->isCollidedWith(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    move v2, v0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 3
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/SceneNode;

    .line 4
    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ne v2, v0, :cond_3

    .line 5
    new-instance v0, Lcom/smartisanos/smengine/l;

    invoke-direct {v0, p1, p0}, Lcom/smartisanos/smengine/l;-><init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->collideEnter(Lcom/smartisanos/smengine/l;)I

    move-result p0

    return p0

    :cond_3
    return v2

    .line 7
    :cond_4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->bt()Lcom/smartisanos/smengine/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/m;->bk()Lcom/smartisanos/smengine/l;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 8
    invoke-direct {p0, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->collideExitAll(Lcom/smartisanos/smengine/l;Lcom/smartisanos/smengine/SceneNode;)I

    :cond_5
    return v0
.end method

.method public convertTransfromToAncestor(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/a/h;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 2
    invoke-direct {p0, p0}, Lcom/smartisanos/smengine/SceneNode;->getLocalTransformFromNative(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/a/h;

    move-result-object v1

    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->getLocalTransformFromNative(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/a/h;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/a/h;->a(Lcom/smartisanos/smengine/a/h;)Lcom/smartisanos/smengine/a/h;

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public cull(Lcom/smartisanos/smengine/Camera;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected cullWithCameraRect(Lcom/smartisanos/smengine/Camera;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->mForceRenderTag:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-wide v2, p1, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    invoke-static {v0, v1, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->nCullWithCameraRect(JJ)Z

    move-result p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setCulled(Z)V

    return p1
.end method

.method public disableDisplayUpdate()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mUpdateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mUpdateFlags:I

    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Lcom/smartisanos/smengine/Fa;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 3
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->dispatchTouchEvent(Lcom/smartisanos/smengine/Fa;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 4
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public dispatchTouchEvent(Lcom/smartisanos/smengine/va;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5
    sget-boolean v2, Lcom/smartisanos/launcher/va;->_h:Z

    const-string v3, " action = "

    const-string v4, " "

    if-nez v2, :cond_0

    .line 6
    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "<dispatchTouchEvent>"

    invoke-virtual {v2, v6, v5}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/smartisanos/smengine/SceneNode;->onFilterTouchEventForSecurity(Lcom/smartisanos/smengine/va;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v2

    and-int/lit16 v6, v2, 0xff

    if-nez v6, :cond_1

    .line 9
    invoke-direct/range {p0 .. p1}, Lcom/smartisanos/smengine/SceneNode;->cancelAndClearTouchTargets(Lcom/smartisanos/smengine/va;)V

    .line 10
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->resetTouchState()V

    :cond_1
    const/4 v7, 0x1

    const-string v8, "dispatchTouchEvent"

    if-eqz v6, :cond_4

    .line 11
    iget-object v9, v0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/ia;

    if-eqz v9, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    sget-boolean v2, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v2, :cond_3

    .line 13
    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mFirstTouchTarget == null. first down is not handle. actionMasked = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " mFirstTouchTarget = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/ia;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v10, v7

    goto :goto_4

    .line 14
    :cond_4
    :goto_0
    sget-boolean v9, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v9, :cond_6

    .line 15
    iget-object v9, v0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/ia;

    if-eqz v9, :cond_5

    .line 16
    sget-object v9, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mFirstTouchTarget = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/ia;

    invoke-virtual {v11}, Lcom/smartisanos/smengine/ia;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_5
    sget-object v9, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    const-string v10, "TMotionEvent.ACTION_DOWN"

    invoke-virtual {v9, v8, v10}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_6
    :goto_1
    iget v9, v0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    const/high16 v10, 0x80000

    and-int/2addr v9, v10

    if-eqz v9, :cond_7

    move v9, v7

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    :goto_2
    if-nez v9, :cond_8

    .line 19
    invoke-virtual/range {p0 .. p1}, Lcom/smartisanos/smengine/SceneNode;->onInterceptTouchEvent(Lcom/smartisanos/smengine/va;)Z

    move-result v10

    .line 20
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/va;->setAction(I)V

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    .line 21
    :goto_3
    sget-boolean v2, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v2, :cond_9

    .line 22
    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "intercepted = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " disallowIntercept = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_9
    :goto_4
    sget-boolean v2, Lcom/smartisanos/launcher/va;->_h:Z

    const-string v9, " intercepted = "

    if-nez v2, :cond_a

    .line 24
    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v8, v11}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->resetCancelNextUpFlag(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x3

    if-ne v6, v2, :cond_b

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    move v2, v7

    .line 26
    :goto_6
    iget v11, v0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    const/high16 v12, 0x200000

    and-int/2addr v11, v12

    if-eqz v11, :cond_d

    move v11, v7

    goto :goto_7

    :cond_d
    const/4 v11, 0x0

    .line 27
    :goto_7
    sget-boolean v12, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v12, :cond_e

    .line 28
    sget-object v12, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " canceled = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " split = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v8, v13}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const/4 v12, 0x7

    if-nez v2, :cond_22

    if-nez v10, :cond_22

    if-eqz v6, :cond_11

    if-eqz v11, :cond_f

    const/4 v15, 0x5

    if-eq v6, v15, :cond_11

    :cond_f
    if-ne v6, v12, :cond_10

    goto :goto_8

    :cond_10
    move-object/from16 v20, v3

    move/from16 v22, v11

    goto/16 :goto_14

    .line 29
    :cond_11
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/smengine/va;->getActionIndex()I

    move-result v15

    if-eqz v11, :cond_12

    .line 30
    invoke-virtual {v1, v15}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v16

    shl-int v16, v7, v16

    move/from16 v12, v16

    goto :goto_9

    :cond_12
    const/4 v12, -0x1

    .line 31
    :goto_9
    invoke-direct {v0, v12}, Lcom/smartisanos/smengine/SceneNode;->removePointersFromTouchTargets(I)V

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getAllViewCanBeTouched()Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_13

    const/4 v13, 0x0

    goto :goto_a

    .line 33
    :cond_13
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v13, v17

    .line 34
    :goto_a
    sget-boolean v17, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v17, :cond_15

    .line 35
    sget-object v14, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    const-string v5, "================== begin ============"

    invoke-virtual {v14, v8, v5}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v5, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v3

    const-string v3, "this has "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " child."

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v8, v3}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v13, :cond_14

    .line 37
    sget-object v5, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/smartisanos/smengine/SceneNode;

    move/from16 v22, v11

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v8, v11}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    move/from16 v11, v22

    goto :goto_b

    :cond_14
    move/from16 v22, v11

    .line 38
    sget-object v3, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    const-string v5, "================== end =============="

    invoke-virtual {v3, v8, v5}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_15
    move-object/from16 v20, v3

    move/from16 v22, v11

    :goto_c
    if-eqz v13, :cond_20

    .line 39
    invoke-virtual {v1, v15}, Lcom/smartisanos/smengine/va;->getX(I)F

    move-result v3

    .line 40
    invoke-virtual {v1, v15}, Lcom/smartisanos/smengine/va;->getY(I)F

    move-result v5

    .line 41
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v14, 0x0

    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/smengine/SceneNode;

    .line 42
    invoke-static {v11}, Lcom/smartisanos/smengine/SceneNode;->canViewReceivePointerEvents(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v13

    if-eqz v13, :cond_1d

    invoke-virtual {v0, v3, v5, v11}, Lcom/smartisanos/smengine/SceneNode;->isTransformedTouchPointInView(FFLcom/smartisanos/smengine/SceneNode;)Z

    move-result v13

    if-nez v13, :cond_16

    goto/16 :goto_f

    .line 43
    :cond_16
    sget-boolean v13, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v13, :cond_17

    .line 44
    sget-object v13, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " is visiable and is in BoundingVolume"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v8, v14}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_17
    invoke-direct {v0, v11}, Lcom/smartisanos/smengine/SceneNode;->getTouchTarget(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/ia;

    move-result-object v14

    if-eqz v14, :cond_18

    .line 46
    iget v3, v14, Lcom/smartisanos/smengine/ia;->pointerIdBits:I

    or-int/2addr v3, v12

    iput v3, v14, Lcom/smartisanos/smengine/ia;->pointerIdBits:I

    goto/16 :goto_11

    .line 47
    :cond_18
    invoke-static {v11}, Lcom/smartisanos/smengine/SceneNode;->resetCancelNextUpFlag(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 48
    sget-boolean v13, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v13, :cond_19

    .line 49
    sget-object v13, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v7

    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " will call dispatchTransformedTouchEvent"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v8, v7}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_19
    move-object/from16 v21, v7

    :goto_e
    const/4 v7, 0x0

    .line 50
    invoke-direct {v0, v1, v7, v11, v12}, Lcom/smartisanos/smengine/SceneNode;->dispatchTransformedTouchEvent(Lcom/smartisanos/smengine/va;ZLcom/smartisanos/smengine/SceneNode;I)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 51
    sget-boolean v3, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v3, :cond_1a

    .line 52
    sget-object v3, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "dispatchTransformedTouchEvent return turn"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v8, v5}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_1a
    invoke-direct {v0, v11, v12}, Lcom/smartisanos/smengine/SceneNode;->addTouchTarget(Lcom/smartisanos/smengine/SceneNode;I)Lcom/smartisanos/smengine/ia;

    move-result-object v14

    .line 54
    sget-boolean v3, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v3, :cond_1b

    .line 55
    sget-object v3, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " addTouchTarget. break. newTouchTarget = "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v14}, Lcom/smartisanos/smengine/ia;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-virtual {v3, v8, v5}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    const/4 v5, 0x1

    goto/16 :goto_12

    .line 58
    :cond_1c
    sget-boolean v13, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v13, :cond_1e

    .line 59
    sget-object v13, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "dispatchTransformedTouchEvent return false"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v8, v11}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_1d
    :goto_f
    move-object/from16 v21, v7

    const/4 v7, 0x0

    .line 60
    sget-boolean v13, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v13, :cond_1e

    .line 61
    sget-object v13, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " can receive = "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcom/smartisanos/smengine/SceneNode;->canViewReceivePointerEvents(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v8, v7}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v7, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " BoundingVolume = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v5, v11}, Lcom/smartisanos/smengine/SceneNode;->isTransformedTouchPointInView(FFLcom/smartisanos/smengine/SceneNode;)Z

    move-result v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    :goto_10
    move-object/from16 v7, v21

    goto/16 :goto_d

    :cond_1f
    :goto_11
    const/4 v5, 0x0

    goto :goto_12

    :cond_20
    const/4 v5, 0x0

    const/4 v14, 0x0

    :goto_12
    if-nez v14, :cond_24

    .line 63
    iget-object v3, v0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/ia;

    if-eqz v3, :cond_24

    .line 64
    :goto_13
    iget-object v7, v3, Lcom/smartisanos/smengine/ia;->next:Lcom/smartisanos/smengine/ia;

    if-eqz v7, :cond_21

    move-object v3, v7

    goto :goto_13

    .line 65
    :cond_21
    iget v7, v3, Lcom/smartisanos/smengine/ia;->pointerIdBits:I

    or-int/2addr v7, v12

    iput v7, v3, Lcom/smartisanos/smengine/ia;->pointerIdBits:I

    move-object v14, v3

    goto :goto_15

    :cond_22
    move-object/from16 v20, v3

    move/from16 v22, v11

    .line 66
    sget-boolean v3, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v3, :cond_23

    .line 67
    sget-object v3, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " cancel = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v8, v5}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    :goto_14
    const/4 v5, 0x0

    const/4 v14, 0x0

    .line 68
    :cond_24
    :goto_15
    iget-object v3, v0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/ia;

    if-nez v3, :cond_25

    const/4 v7, -0x1

    const/4 v11, 0x0

    .line 69
    invoke-direct {v0, v1, v2, v11, v7}, Lcom/smartisanos/smengine/SceneNode;->dispatchTransformedTouchEvent(Lcom/smartisanos/smengine/va;ZLcom/smartisanos/smengine/SceneNode;I)Z

    move-result v3

    move v5, v3

    goto/16 :goto_1e

    :cond_25
    const/4 v11, 0x0

    const/4 v7, 0x0

    :goto_16
    if-eqz v3, :cond_2d

    .line 70
    iget-object v12, v3, Lcom/smartisanos/smengine/ia;->next:Lcom/smartisanos/smengine/ia;

    if-eqz v5, :cond_26

    if-ne v3, v14, :cond_26

    move/from16 v17, v5

    const/4 v7, 0x1

    goto :goto_1c

    .line 71
    :cond_26
    iget-object v13, v3, Lcom/smartisanos/smengine/ia;->child:Lcom/smartisanos/smengine/SceneNode;

    invoke-static {v13}, Lcom/smartisanos/smengine/SceneNode;->resetCancelNextUpFlag(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v13

    if-nez v13, :cond_28

    if-eqz v10, :cond_27

    goto :goto_17

    :cond_27
    const/4 v13, 0x0

    goto :goto_18

    :cond_28
    :goto_17
    const/4 v13, 0x1

    .line 72
    :goto_18
    sget-boolean v15, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v15, :cond_29

    .line 73
    sget-object v15, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    move/from16 v17, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v7

    const-string v7, "cancelChild = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v8, v5}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_29
    move/from16 v17, v5

    move/from16 v18, v7

    .line 74
    :goto_19
    iget-object v5, v3, Lcom/smartisanos/smengine/ia;->child:Lcom/smartisanos/smengine/SceneNode;

    iget v7, v3, Lcom/smartisanos/smengine/ia;->pointerIdBits:I

    invoke-direct {v0, v1, v13, v5, v7}, Lcom/smartisanos/smengine/SceneNode;->dispatchTransformedTouchEvent(Lcom/smartisanos/smengine/va;ZLcom/smartisanos/smengine/SceneNode;I)Z

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v7, 0x1

    goto :goto_1a

    :cond_2a
    move/from16 v7, v18

    :goto_1a
    if-eqz v13, :cond_2c

    if-nez v11, :cond_2b

    .line 75
    iput-object v12, v0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/ia;

    goto :goto_1b

    .line 76
    :cond_2b
    iput-object v12, v11, Lcom/smartisanos/smengine/ia;->next:Lcom/smartisanos/smengine/ia;

    .line 77
    :goto_1b
    invoke-virtual {v3}, Lcom/smartisanos/smengine/ia;->recycle()V

    goto :goto_1d

    :cond_2c
    :goto_1c
    move-object v11, v3

    :goto_1d
    move-object v3, v12

    move/from16 v5, v17

    goto :goto_16

    :cond_2d
    move/from16 v18, v7

    move/from16 v5, v18

    :goto_1e
    if-nez v2, :cond_2f

    const/4 v2, 0x1

    if-eq v6, v2, :cond_2f

    const/4 v3, 0x7

    if-ne v6, v3, :cond_2e

    goto :goto_1f

    :cond_2e
    if-eqz v22, :cond_30

    const/4 v3, 0x6

    if-ne v6, v3, :cond_30

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/smengine/va;->getActionIndex()I

    move-result v3

    .line 79
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v3

    shl-int/2addr v2, v3

    .line 80
    invoke-direct {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->removePointersFromTouchTargets(I)V

    goto :goto_20

    .line 81
    :cond_2f
    :goto_1f
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->resetTouchState()V

    :cond_30
    :goto_20
    move/from16 v19, v5

    goto :goto_21

    :cond_31
    move-object/from16 v20, v3

    const/16 v19, 0x0

    .line 82
    :goto_21
    sget-boolean v2, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v2, :cond_32

    .line 83
    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "</dispatchTouchEvent>"

    invoke-virtual {v2, v1, v0}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    return v19
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->cull(Lcom/smartisanos/smengine/Camera;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->drawMesh(Lcom/smartisanos/smengine/Camera;)V

    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 7
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 8
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected drawMesh(Lcom/smartisanos/smengine/Camera;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->mIsVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/y;

    if-nez v1, :cond_2

    return-void

    .line 4
    :cond_2
    iget-boolean v1, v0, Lcom/smartisanos/smengine/mymaterial/f;->bW:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lcom/smartisanos/smengine/mymaterial/f;->cW:Z

    if-nez v1, :cond_4

    iget-boolean v0, v0, Lcom/smartisanos/smengine/mymaterial/f;->gW:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "no mvp matrix use"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setNativeData(Lcom/smartisanos/smengine/Camera;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    iget-boolean v0, v0, Lcom/smartisanos/smengine/mymaterial/f;->bW:Z

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->calculateMVPMatrixData(Lcom/smartisanos/smengine/Camera;)V

    .line 9
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    iget-boolean v0, v0, Lcom/smartisanos/smengine/mymaterial/f;->dW:Z

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->calculateLocalTranslateData()V

    .line 11
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    iget-boolean v0, v0, Lcom/smartisanos/smengine/mymaterial/f;->hW:Z

    if-eqz v0, :cond_7

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->calculateWorldMatrixData()V

    .line 13
    :cond_7
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    iget-boolean v0, v0, Lcom/smartisanos/smengine/mymaterial/f;->fW:Z

    if-eqz v0, :cond_8

    .line 14
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->calculateProjectionMatrixData(Lcom/smartisanos/smengine/Camera;)V

    .line 15
    :cond_8
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    iget-boolean v0, v0, Lcom/smartisanos/smengine/mymaterial/f;->gW:Z

    if-eqz v0, :cond_9

    .line 16
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->calculateCameraMatrixData(Lcom/smartisanos/smengine/Camera;)V

    .line 17
    :cond_9
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    iget-boolean v0, v0, Lcom/smartisanos/smengine/mymaterial/f;->eW:Z

    if-eqz v0, :cond_a

    .line 18
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->calculateViewMatrixData(Lcom/smartisanos/smengine/Camera;)V

    .line 19
    :cond_a
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->it()Lcom/smartisanos/smengine/J;

    move-result-object p1

    .line 20
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderQueue()I

    move-result v0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v1

    invoke-virtual {p1, v0, v1, p0}, Lcom/smartisanos/smengine/J;->a(IILcom/smartisanos/smengine/SceneNode;)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->nReleaseNative(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public findNode(Ljava/lang/String;)Lcom/smartisanos/smengine/SceneNode;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 4
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->findNode(Ljava/lang/String;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final forceUpdateGeometricState()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateWorldTransforms()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateWorldBoundingVolume()V

    return-void
.end method

.method public forceUpdateNeedDisplay()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/SceneNode;

    .line 3
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateNeedDisplay()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forceUpdateShadowMap()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/SceneNode;

    .line 3
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateShadowMap()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final forceUpdateWorldBoundingVolume()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    iget-wide v2, v2, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->nUpdateWorldBoundingVolume(JJ)V

    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateWorldBoundingVolume()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final forceUpdateWorldTransforms()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iget-wide v2, v2, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->nUpdateWorldTransforms(JJ)V

    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateWorldTransforms()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public genMipmap()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderTarget:Lcom/smartisanos/smengine/N;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/N;->genMipmap()V

    :cond_0
    return-void
.end method

.method public getAllViewCanBeTouched()Ljava/util/ArrayList;
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/t;->Vr()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getAnimationState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/SceneNode;->mCurrentAnimationState:I

    return p0
.end method

.method public getCamera()Lcom/smartisanos/smengine/Camera;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mSelfCamera:Lcom/smartisanos/smengine/Camera;

    return-object p0
.end method

.method public getChildAt(I)Lcom/smartisanos/smengine/SceneNode;
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/SceneNode;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getChildCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getClearFlag()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/SceneNode;->isClear:Z

    return p0
.end method

.method public getColor(Lcom/smartisanos/smengine/a/k;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/a/k;

    if-eqz p0, :cond_0

    .line 3
    iget v0, p0, Lcom/smartisanos/smengine/a/k;->x:F

    iput v0, p1, Lcom/smartisanos/smengine/a/k;->x:F

    .line 4
    iget v0, p0, Lcom/smartisanos/smengine/a/k;->y:F

    iput v0, p1, Lcom/smartisanos/smengine/a/k;->y:F

    .line 5
    iget v0, p0, Lcom/smartisanos/smengine/a/k;->z:F

    iput v0, p1, Lcom/smartisanos/smengine/a/k;->z:F

    .line 6
    iget p0, p0, Lcom/smartisanos/smengine/a/k;->w:F

    iput p0, p1, Lcom/smartisanos/smengine/a/k;->w:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 7
    iput p0, p1, Lcom/smartisanos/smengine/a/k;->x:F

    .line 8
    iput p0, p1, Lcom/smartisanos/smengine/a/k;->y:F

    .line 9
    iput p0, p1, Lcom/smartisanos/smengine/a/k;->z:F

    .line 10
    iput p0, p1, Lcom/smartisanos/smengine/a/k;->w:F

    goto :goto_0

    .line 11
    :cond_1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "Material is null !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCornerPointScreenCoord(Lcom/smartisanos/smengine/Camera;[F)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-wide p0, p1, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/smartisanos/smengine/SceneNode;->nGetCornerPointScreenCoord(JJ[F)V

    return-void
.end method

.method public getInnerShadowAlphaRange_H(Lcom/smartisanos/smengine/a/k;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 v0, 0xa

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/a/k;

    if-eqz p0, :cond_0

    .line 3
    iget v0, p0, Lcom/smartisanos/smengine/a/k;->x:F

    iput v0, p1, Lcom/smartisanos/smengine/a/k;->x:F

    .line 4
    iget v0, p0, Lcom/smartisanos/smengine/a/k;->y:F

    iput v0, p1, Lcom/smartisanos/smengine/a/k;->y:F

    .line 5
    iget v0, p0, Lcom/smartisanos/smengine/a/k;->z:F

    iput v0, p1, Lcom/smartisanos/smengine/a/k;->z:F

    .line 6
    iget p0, p0, Lcom/smartisanos/smengine/a/k;->w:F

    iput p0, p1, Lcom/smartisanos/smengine/a/k;->w:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 7
    iput p0, p1, Lcom/smartisanos/smengine/a/k;->x:F

    .line 8
    iput p0, p1, Lcom/smartisanos/smengine/a/k;->y:F

    .line 9
    iput p0, p1, Lcom/smartisanos/smengine/a/k;->z:F

    .line 10
    iput p0, p1, Lcom/smartisanos/smengine/a/k;->w:F

    goto :goto_0

    .line 11
    :cond_1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "Material is null !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getInnerShadowAlphaRange_V(Lcom/smartisanos/smengine/a/k;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 v0, 0xc

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/a/k;

    if-eqz p0, :cond_0

    .line 3
    iget v0, p0, Lcom/smartisanos/smengine/a/k;->x:F

    iput v0, p1, Lcom/smartisanos/smengine/a/k;->x:F

    .line 4
    iget v0, p0, Lcom/smartisanos/smengine/a/k;->y:F

    iput v0, p1, Lcom/smartisanos/smengine/a/k;->y:F

    .line 5
    iget v0, p0, Lcom/smartisanos/smengine/a/k;->z:F

    iput v0, p1, Lcom/smartisanos/smengine/a/k;->z:F

    .line 6
    iget p0, p0, Lcom/smartisanos/smengine/a/k;->w:F

    iput p0, p1, Lcom/smartisanos/smengine/a/k;->w:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 7
    iput p0, p1, Lcom/smartisanos/smengine/a/k;->x:F

    .line 8
    iput p0, p1, Lcom/smartisanos/smengine/a/k;->y:F

    .line 9
    iput p0, p1, Lcom/smartisanos/smengine/a/k;->z:F

    .line 10
    iput p0, p1, Lcom/smartisanos/smengine/a/k;->w:F

    goto :goto_0

    .line 11
    :cond_1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "Material is null !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getInnerShadowSize_H(Lcom/smartisanos/smengine/a/k;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 v0, 0x9

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/a/k;

    if-eqz p0, :cond_0

    .line 3
    iget v0, p0, Lcom/smartisanos/smengine/a/k;->x:F

    iput v0, p1, Lcom/smartisanos/smengine/a/k;->x:F

    .line 4
    iget v0, p0, Lcom/smartisanos/smengine/a/k;->y:F

    iput v0, p1, Lcom/smartisanos/smengine/a/k;->y:F

    .line 5
    iget v0, p0, Lcom/smartisanos/smengine/a/k;->z:F

    iput v0, p1, Lcom/smartisanos/smengine/a/k;->z:F

    .line 6
    iget p0, p0, Lcom/smartisanos/smengine/a/k;->w:F

    iput p0, p1, Lcom/smartisanos/smengine/a/k;->w:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 7
    iput p0, p1, Lcom/smartisanos/smengine/a/k;->x:F

    .line 8
    iput p0, p1, Lcom/smartisanos/smengine/a/k;->y:F

    .line 9
    iput p0, p1, Lcom/smartisanos/smengine/a/k;->z:F

    .line 10
    iput p0, p1, Lcom/smartisanos/smengine/a/k;->w:F

    goto :goto_0

    .line 11
    :cond_1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "Material is null !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getInnerShadowSize_V(Lcom/smartisanos/smengine/a/k;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 v0, 0xb

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/a/k;

    if-eqz p0, :cond_0

    .line 3
    iget v0, p0, Lcom/smartisanos/smengine/a/k;->x:F

    iput v0, p1, Lcom/smartisanos/smengine/a/k;->x:F

    .line 4
    iget v0, p0, Lcom/smartisanos/smengine/a/k;->y:F

    iput v0, p1, Lcom/smartisanos/smengine/a/k;->y:F

    .line 5
    iget v0, p0, Lcom/smartisanos/smengine/a/k;->z:F

    iput v0, p1, Lcom/smartisanos/smengine/a/k;->z:F

    .line 6
    iget p0, p0, Lcom/smartisanos/smengine/a/k;->w:F

    iput p0, p1, Lcom/smartisanos/smengine/a/k;->w:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 7
    iput p0, p1, Lcom/smartisanos/smengine/a/k;->x:F

    .line 8
    iput p0, p1, Lcom/smartisanos/smengine/a/k;->y:F

    .line 9
    iput p0, p1, Lcom/smartisanos/smengine/a/k;->z:F

    .line 10
    iput p0, p1, Lcom/smartisanos/smengine/a/k;->w:F

    goto :goto_0

    .line 11
    :cond_1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "Material is null !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getInteractionState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/SceneNode;->mCurrentInteractionState:I

    return p0
.end method

.method public getLayer()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/SceneNode;->mLayer:I

    return p0
.end method

.method getListenerInfo()Lcom/smartisanos/smengine/X;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mListenerInfo:Lcom/smartisanos/smengine/X;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/X;

    invoke-direct {v0}, Lcom/smartisanos/smengine/X;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mListenerInfo:Lcom/smartisanos/smengine/X;

    .line 3
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mListenerInfo:Lcom/smartisanos/smengine/X;

    return-object p0
.end method

.method public getLocalBoundingVolume()Lcom/smartisanos/smengine/j;
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    sget-object p0, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    invoke-static {v0, v1, p0}, Lcom/smartisanos/smengine/SceneNode;->nGetLocalBoundingRect(J[F)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Lcom/smartisanos/smengine/i;

    sget-object v0, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v0, v0, v4

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/smartisanos/smengine/i;-><init>(FFFF)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalTransform()Lcom/smartisanos/smengine/a/h;
    .locals 0

    .line 1
    invoke-direct {p0, p0}, Lcom/smartisanos/smengine/SceneNode;->getLocalTransformFromNative(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/a/h;

    move-result-object p0

    return-object p0
.end method

.method public getLocation()Lcom/smartisanos/smengine/a/j;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    sget-object p0, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    invoke-static {v0, v1, p0}, Lcom/smartisanos/smengine/SceneNode;->nGetLocation(J[F)V

    .line 2
    new-instance p0, Lcom/smartisanos/smengine/a/j;

    sget-object v0, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-direct {p0, v1, v2, v0}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object p0
.end method

.method public getMaterial()Lcom/smartisanos/smengine/mymaterial/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    return-object p0
.end method

.method public getMesh()Lcom/smartisanos/smengine/y;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/y;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getParent()Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    return-object p0
.end method

.method public getRUParam()Lcom/smartisanos/smengine/K;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mRUParam:Lcom/smartisanos/smengine/K;

    return-object p0
.end method

.method public getRenderQueue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderQueue:I

    return p0
.end method

.method public getRenderState()Lcom/smartisanos/smengine/L;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderState:Lcom/smartisanos/smengine/L;

    return-object p0
.end method

.method public getRenderTarget()Lcom/smartisanos/smengine/N;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderTarget:Lcom/smartisanos/smengine/N;

    return-object p0
.end method

.method public getScale()Lcom/smartisanos/smengine/a/j;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    sget-object p0, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    invoke-static {v0, v1, p0}, Lcom/smartisanos/smengine/SceneNode;->nGetScale(J[F)V

    .line 2
    new-instance p0, Lcom/smartisanos/smengine/a/j;

    sget-object v0, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-direct {p0, v1, v2, v0}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object p0
.end method

.method public getScaleRotatePivot()Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method public getSize(Lcom/smartisanos/smengine/a/j;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    sget-object p0, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    invoke-static {v0, v1, p0}, Lcom/smartisanos/smengine/SceneNode;->nGetSize(J[F)V

    .line 2
    sget-object p0, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v0, 0x0

    aget v0, p0, v0

    iput v0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    const/4 v0, 0x1

    .line 3
    aget v0, p0, v0

    iput v0, p1, Lcom/smartisanos/smengine/a/j;->y:F

    const/4 v0, 0x2

    .line 4
    aget p0, p0, v0

    iput p0, p1, Lcom/smartisanos/smengine/a/j;->z:F

    return-void
.end method

.method public getSubLayer()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/SceneNode;->mSubLayer:I

    return p0
.end method

.method public getTMotionEvent()Lcom/smartisanos/smengine/va;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mTMotionEvent:Lcom/smartisanos/smengine/va;

    return-object p0
.end method

.method public getTextureName(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getTranslatePivot()Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mTranslatePivot:Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method public getViewPort()Lcom/smartisanos/smengine/Ga;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mViewPort:Lcom/smartisanos/smengine/Ga;

    return-object p0
.end method

.method public getWorldBoundingVolume()Lcom/smartisanos/smengine/j;
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    sget-object p0, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    invoke-static {v0, v1, p0}, Lcom/smartisanos/smengine/SceneNode;->nGetWorldBoundingRect(J[F)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Lcom/smartisanos/smengine/i;

    sget-object v0, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v0, v0, v4

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/smartisanos/smengine/i;-><init>(FFFF)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWorldMatrix()Lcom/smartisanos/smengine/a/f;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMatrixForRender:Lcom/smartisanos/smengine/a/f;

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mWorldMatrix:Lcom/smartisanos/smengine/a/f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/a/f;->a(Lcom/smartisanos/smengine/a/f;)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mMatrixForRender:Lcom/smartisanos/smengine/a/f;

    return-object p0
.end method

.method public getWorldMatrix(Lcom/smartisanos/smengine/a/f;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mWorldMatrix:Lcom/smartisanos/smengine/a/f;

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/a/f;->a(Lcom/smartisanos/smengine/a/f;)V

    return-void
.end method

.method public getWorldTransform()Lcom/smartisanos/smengine/a/h;
    .locals 0

    .line 1
    invoke-direct {p0, p0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransformFromNative(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/a/h;

    move-result-object p0

    return-object p0
.end method

.method public getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    sget-object p0, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    invoke-static {v0, v1, p0}, Lcom/smartisanos/smengine/SceneNode;->nGetWorldTranslate(J[F)V

    .line 2
    sget-object p0, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v0, 0x0

    aget v0, p0, v0

    iput v0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    const/4 v0, 0x1

    .line 3
    aget v0, p0, v0

    iput v0, p1, Lcom/smartisanos/smengine/a/j;->y:F

    const/4 v0, 0x2

    .line 4
    aget p0, p0, v0

    iput p0, p1, Lcom/smartisanos/smengine/a/j;->z:F

    :cond_0
    return-void
.end method

.method public hasOnClickListeners()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mListenerInfo:Lcom/smartisanos/smengine/X;

    if-eqz p0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/smengine/X;->mOnClickListener:Lcom/smartisanos/smengine/aa;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCancelForSetPress()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/SceneNode;->mIsCancelForSetPress:Z

    return p0
.end method

.method public isClickable()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    const/16 v0, 0x4000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCollidedWith(Lcom/smartisanos/smengine/SceneNode;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->mNeedDetectCollide:Z

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-wide v2, p1, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-boolean p0, p0, Lcom/smartisanos/smengine/SceneNode;->mCollideAlways:Z

    invoke-static {v0, v1, v2, v3, p0}, Lcom/smartisanos/smengine/SceneNode;->nIsCollidedWith(JJZ)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isCulled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/SceneNode;->mIsCulled:Z

    return p0
.end method

.method public isInWindow(FFF)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->nIsInWindow(JFFF)Z

    move-result p0

    return p0
.end method

.method public isIntersectWith(Lcom/smartisanos/smengine/SceneNode;)Z
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-wide p0, p1, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, p1, v2}, Lcom/smartisanos/smengine/SceneNode;->nIsIntersectWith(JJZ)Z

    move-result p0

    return p0
.end method

.method public isLongClickable()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    const/high16 v0, 0x200000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMotionEventSplittingEnabled()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    const/high16 v0, 0x200000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNeedDisplay()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/SceneNode;->mUpdateFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPointInBoundingVolume(FFF)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mWorldBoundingVolume:Lcom/smartisanos/smengine/j;

    if-nez p0, :cond_1

    .line 2
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "has no bounding volume"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(FFF)Z

    move-result p0

    return p0
.end method

.method public isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z
    .locals 3

    .line 4
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget p0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-static {v0, v1, p0, v2, p1}, Lcom/smartisanos/smengine/SceneNode;->nIsPointInBoundingVolume(JFFF)Z

    move-result p0

    return p0
.end method

.method public isPressed()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    const/16 v0, 0x4000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTransformedTouchPointInView(FF)Z
    .locals 9

    .line 2
    iget-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->mForceDispatchTouchToView:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v0

    .line 4
    iget-object v2, v0, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, p1, v3

    if-gez v4, :cond_1

    move p1, v3

    goto :goto_0

    .line 5
    :cond_1
    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    add-int/lit8 v5, v4, -0x1

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-lez v5, :cond_2

    sub-int/2addr v4, v1

    int-to-float p1, v4

    :cond_2
    :goto_0
    cmpg-float v4, p2, v3

    if-gez v4, :cond_3

    move p2, v3

    goto :goto_1

    .line 6
    :cond_3
    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    add-int/lit8 v4, v3, -0x1

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-lez v4, :cond_4

    sub-int/2addr v3, v1

    int-to-float p2, v3

    .line 7
    :cond_4
    :goto_1
    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v3, v3

    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v4, v4

    invoke-static {p1, p2, v3, v4, v2}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getWorldBoundingVolume()Lcom/smartisanos/smengine/j;

    move-result-object v3

    .line 9
    sget-boolean v4, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v4, :cond_7

    const-string v4, "isTransformedTouchPointInView"

    if-eqz v3, :cond_6

    .line 10
    sget-object v5, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " y = "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " name = "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, v4, p2}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object p2, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newP.x = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " newP.y = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    instance-of p2, v3, Lcom/smartisanos/smengine/i;

    if-eqz p2, :cond_5

    .line 13
    move-object p2, v3

    check-cast p2, Lcom/smartisanos/smengine/i;

    invoke-virtual {p2}, Lcom/smartisanos/smengine/i;->Qj()Lcom/smartisanos/smengine/a/i;

    move-result-object v5

    .line 14
    invoke-virtual {p2}, Lcom/smartisanos/smengine/i;->Pj()Lcom/smartisanos/smengine/a/i;

    move-result-object p2

    .line 15
    sget-object v6, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "min.x = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " min.y = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v5, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maxPoint.x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p2, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " maxPoint.y = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, v4, p2}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_5
    sget-object p2, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bv.isPointInBoundingVolume(newP) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v4, p0}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 18
    :cond_6
    sget-object p1, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bv is null name = "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v4, p0}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    if-eqz v3, :cond_8

    .line 19
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 20
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    return v1

    .line 21
    :cond_8
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    const/4 p0, 0x0

    return p0
.end method

.method protected isTransformedTouchPointInView(FFLcom/smartisanos/smengine/SceneNode;)Z
    .locals 0

    .line 1
    invoke-virtual {p3, p1, p2}, Lcom/smartisanos/smengine/SceneNode;->isTransformedTouchPointInView(FF)Z

    move-result p0

    return p0
.end method

.method public isUpdateBoundingVolume()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/SceneNode;->mIsUpdateBoundingVolume:Z

    return p0
.end method

.method public isUserInteractionEnable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/SceneNode;->mUserInteractionEnable:Z

    return p0
.end method

.method public isVisible()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/SceneNode;->mIsVisible:Z

    return p0
.end method

.method public onFilterTouchEventForSecurity(Lcom/smartisanos/smengine/va;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onInterceptTouchEvent(Lcom/smartisanos/smengine/va;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/va;)Z
    .locals 6

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onTouchEvent"

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mListenerInfo:Lcom/smartisanos/smengine/X;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0}, Lcom/smartisanos/smengine/X;->a(Lcom/smartisanos/smengine/X;)Lcom/smartisanos/smengine/ca;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/smartisanos/smengine/X;->a(Lcom/smartisanos/smengine/X;)Lcom/smartisanos/smengine/ca;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/smartisanos/smengine/ca;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/va;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getPressure()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPressure:F

    .line 6
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    if-eq v0, v1, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    goto/16 :goto_3

    .line 7
    :cond_2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "############Touch Cancel at = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 8
    :cond_3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getX()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchX:F

    .line 9
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchY:F

    .line 10
    iput-boolean v1, p0, Lcom/smartisanos/smengine/SceneNode;->mIsCancelForSetPress:Z

    .line 11
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->setPressed(Z)V

    .line 12
    invoke-direct {p0}, Lcom/smartisanos/smengine/SceneNode;->removeLongPressCallback()V

    .line 13
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p0, :cond_18

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->Bs()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/Ha;->xb(Z)V

    goto/16 :goto_3

    .line 15
    :cond_4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getX()F

    move-result v0

    .line 16
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result v3

    .line 17
    iget v4, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchX:F

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gez v4, :cond_5

    iget v4, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchY:F

    sub-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_18

    .line 18
    :cond_5
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->Bs()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 19
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getListenerInfo()Lcom/smartisanos/smengine/X;

    move-result-object v4

    iget-object v4, v4, Lcom/smartisanos/smengine/X;->mOnLongClickListener:Lcom/smartisanos/smengine/ba;

    if-eqz v4, :cond_6

    .line 20
    invoke-direct {p0}, Lcom/smartisanos/smengine/SceneNode;->removeLongPressCallback()V

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/smartisanos/launcher/view/Ha;->xb(Z)V

    .line 22
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getListenerInfo()Lcom/smartisanos/smengine/X;

    move-result-object v4

    iget-object v4, v4, Lcom/smartisanos/smengine/X;->mOnLongClickListener:Lcom/smartisanos/smengine/ba;

    invoke-virtual {v4, p0}, Lcom/smartisanos/smengine/ba;->j(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 23
    :cond_6
    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchX:F

    .line 24
    iput v3, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchY:F

    .line 25
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchX:F

    iget v3, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchY:F

    iget v4, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchSlop:I

    int-to-float v4, v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->pointInView(FFF)Z

    move-result v0

    if-nez v0, :cond_7

    .line 26
    iput-boolean v1, p0, Lcom/smartisanos/smengine/SceneNode;->mCancelClickAndLongPress:Z

    .line 27
    invoke-direct {p0}, Lcom/smartisanos/smengine/SceneNode;->removeLongPressCallback()V

    .line 28
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_7

    .line 29
    iput-boolean v1, p0, Lcom/smartisanos/smengine/SceneNode;->mIsCancelForSetPress:Z

    .line 30
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->setPressed(Z)V

    .line 31
    :cond_7
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p0, :cond_18

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->Bs()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 32
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/Ha;->xb(Z)V

    goto/16 :goto_3

    .line 33
    :cond_8
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "############Touch up from = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 34
    :cond_9
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getX()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchX:F

    .line 35
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchY:F

    .line 36
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    const/high16 v3, 0x2000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_a

    move v2, v1

    .line 37
    :cond_a
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-nez v0, :cond_b

    if-eqz v2, :cond_12

    :cond_b
    if-eqz v2, :cond_c

    .line 38
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setPressed(Z)V

    .line 39
    :cond_c
    iget-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->mHasPerformedLongPress:Z

    const/4 v3, 0x0

    if-nez v0, :cond_f

    .line 40
    invoke-direct {p0}, Lcom/smartisanos/smengine/SceneNode;->removeLongPressCallback()V

    .line 41
    iget-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->mCancelClickAndLongPress:Z

    if-nez v0, :cond_f

    .line 42
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchY:F

    iget v4, p0, Lcom/smartisanos/smengine/SceneNode;->mDownYForHandleFlingUpGestureConflict:F

    cmpl-float v5, v0, v4

    if-gtz v5, :cond_d

    sub-float/2addr v4, v0

    const/high16 v0, 0x43160000    # 150.0f

    cmpg-float v0, v4, v0

    if-gez v0, :cond_f

    .line 43
    :cond_d
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPerformClick:Lcom/smartisanos/smengine/da;

    if-nez v0, :cond_e

    .line 44
    new-instance v0, Lcom/smartisanos/smengine/da;

    invoke-direct {v0, p0, v3}, Lcom/smartisanos/smengine/da;-><init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/S;)V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPerformClick:Lcom/smartisanos/smengine/da;

    .line 45
    :cond_e
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mTMotionEvent:Lcom/smartisanos/smengine/va;

    .line 46
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPerformClick:Lcom/smartisanos/smengine/da;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/da;->run()V

    .line 47
    :cond_f
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mUnsetPressedState:Lcom/smartisanos/smengine/ja;

    if-nez v0, :cond_10

    .line 48
    new-instance v0, Lcom/smartisanos/smengine/ja;

    invoke-direct {v0, p0, v3}, Lcom/smartisanos/smengine/ja;-><init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/S;)V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mUnsetPressedState:Lcom/smartisanos/smengine/ja;

    :cond_10
    if-eqz v2, :cond_11

    .line 49
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mUnsetPressedState:Lcom/smartisanos/smengine/ja;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->postDelayed(Ljava/lang/Runnable;J)Lcom/smartisanos/smengine/n;

    goto :goto_0

    .line 50
    :cond_11
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mUnsetPressedState:Lcom/smartisanos/smengine/ja;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/ja;->run()V

    .line 51
    :cond_12
    :goto_0
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p0, :cond_18

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->Bs()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 52
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/Ha;->xb(Z)V

    goto/16 :goto_3

    .line 53
    :cond_13
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_14

    sget-object v0, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "############Touch Down at = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 54
    :cond_14
    iput-boolean v2, p0, Lcom/smartisanos/smengine/SceneNode;->mIsCancelForSetPress:Z

    .line 55
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getX()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchX:F

    .line 56
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchY:F

    .line 57
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mDownYForHandleFlingUpGestureConflict:F

    .line 58
    iput-boolean v2, p0, Lcom/smartisanos/smengine/SceneNode;->mHasPerformedLongPress:Z

    .line 59
    iput-boolean v2, p0, Lcom/smartisanos/smengine/SceneNode;->mCancelClickAndLongPress:Z

    .line 60
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setPressed(Z)V

    .line 61
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getX()F

    move-result v0

    .line 62
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result v3

    .line 63
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v4, :cond_15

    .line 64
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->Ds()Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->Es()Z

    move-result v4

    if-nez v4, :cond_16

    .line 65
    invoke-direct {p0, v2, v0, v3}, Lcom/smartisanos/smengine/SceneNode;->checkForLongClick(IFF)V

    goto :goto_1

    .line 66
    :cond_15
    invoke-direct {p0, v2, v0, v3}, Lcom/smartisanos/smengine/SceneNode;->checkForLongClick(IFF)V

    .line 67
    :cond_16
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchDownListener:Lcom/smartisanos/smengine/ga;

    if-eqz v0, :cond_17

    .line 68
    invoke-interface {v0, p1, p0}, Lcom/smartisanos/smengine/ga;->a(Lcom/smartisanos/smengine/va;Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->handleTouchDown:Z

    goto :goto_2

    .line 69
    :cond_17
    iput-boolean v2, p0, Lcom/smartisanos/smengine/SceneNode;->handleTouchDown:Z

    .line 70
    :goto_2
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p0, :cond_18

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->Cs()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 71
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/Ha;->xb(Z)V

    :cond_18
    :goto_3
    return v1
.end method

.method public onUpdateInnerShadowAlphaRangeH(Lcom/smartisanos/smengine/a/k;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onUpdateInnerShadowAlphaRangeV(Lcom/smartisanos/smengine/a/k;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onUpdateInnerShadowSizeH(Lcom/smartisanos/smengine/a/k;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onUpdateInnerShadowSizeV(Lcom/smartisanos/smengine/a/k;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onUpdateModulateColor(Lcom/smartisanos/smengine/a/k;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onUpdateRotate(FLcom/smartisanos/smengine/a/j;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onUpdateScale(FFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onUpdateSkewX(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onUpdateSkewY(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onUpdateTexCoordXY(FF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onUpdateTranslate(FFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public performClick()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mListenerInfo:Lcom/smartisanos/smengine/X;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lcom/smartisanos/smengine/X;->mOnClickListener:Lcom/smartisanos/smengine/aa;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p0}, Lcom/smartisanos/smengine/aa;->b(Lcom/smartisanos/smengine/SceneNode;)V

    .line 4
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "############performClick at = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTMotionEvent:Lcom/smartisanos/smengine/va;

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public performLongClick(FF)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mListenerInfo:Lcom/smartisanos/smengine/X;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lcom/smartisanos/smengine/X;->mOnLongClickListener:Lcom/smartisanos/smengine/ba;

    if-eqz v1, :cond_1

    .line 3
    iput p1, v1, Lcom/smartisanos/smengine/ba;->MG:F

    .line 4
    iput p2, v1, Lcom/smartisanos/smengine/ba;->NG:F

    .line 5
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_0

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/Ha;->xb(Z)V

    .line 7
    :cond_0
    iget-object p1, v0, Lcom/smartisanos/smengine/X;->mOnLongClickListener:Lcom/smartisanos/smengine/ba;

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/ba;->j(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public pointInView(FFF)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object p3

    .line 2
    iget-object v0, p3, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    .line 3
    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v1, v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v2, v2

    invoke-static {p1, p2, v1, v2, v0}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getWorldBoundingVolume()Lcom/smartisanos/smengine/j;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p3}, Lcom/smartisanos/smengine/d/f;->release()V

    return p2

    :cond_0
    if-nez p1, :cond_1

    .line 7
    iget-boolean p0, p0, Lcom/smartisanos/smengine/SceneNode;->mForceDispatchTouchToView:Z

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p3}, Lcom/smartisanos/smengine/d/f;->release()V

    return p2

    .line 9
    :cond_1
    invoke-virtual {p3}, Lcom/smartisanos/smengine/d/f;->release()V

    const/4 p0, 0x0

    return p0
.end method

.method public post(Ljava/lang/Runnable;)Lcom/smartisanos/smengine/n;
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/S;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1, p1}, Lcom/smartisanos/smengine/S;-><init>(Lcom/smartisanos/smengine/SceneNode;ILjava/lang/Runnable;)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-object v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Lcom/smartisanos/smengine/n;
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/T;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1, p1}, Lcom/smartisanos/smengine/T;-><init>(Lcom/smartisanos/smengine/SceneNode;ILjava/lang/Runnable;)V

    long-to-float p0, p2

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    .line 2
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-object v0
.end method

.method public print()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mLocalTransform = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/a/h;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/a/h;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mParent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    const-string v3, "null"

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mLayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/SceneNode;->mLayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRenderTarget = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderTarget:Lcom/smartisanos/smengine/N;

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/smartisanos/smengine/N;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mViewPort = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mViewPort:Lcom/smartisanos/smengine/Ga;

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ga;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRenderQueue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderQueue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMaterial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/smartisanos/smengine/mymaterial/f;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v4, v1, v2

    const-string v5, " mTextureMapName_DIFFUSE = "

    if-eqz v4, :cond_4

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/smartisanos/smengine/Da;->_a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/smartisanos/smengine/Da;->Ya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 13
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    aget-object v5, v4, v2

    if-eqz v5, :cond_5

    aget-object v3, v4, v2

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIsVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/smartisanos/smengine/SceneNode;->mIsVisible:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method printAllChild(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "node = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " node = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " begin"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->printAllChild(Lcom/smartisanos/smengine/SceneNode;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    sget-object p0, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " end"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void
.end method

.method protected refreshDrawableState()V
    .locals 0

    return-void
.end method

.method public refreshRenderTarget()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/ka;

    invoke-direct {v0}, Lcom/smartisanos/smengine/ka;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->travel(Lcom/smartisanos/smengine/Z;)V

    return-void
.end method

.method public removeAllChildren()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeCallbacks(Lcom/smartisanos/smengine/n;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    return-void
.end method

.method public removeChild(Lcom/smartisanos/smengine/SceneNode;)I
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    const/4 v1, -0x1

    if-ne v0, p0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->removeChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    :cond_0
    return p1

    :cond_1
    return v1

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public removeChildAt(I)Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/SceneNode;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setParent(Lcom/smartisanos/smengine/SceneNode;)V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setTransformUpdate()V

    :cond_0
    return-object p0
.end method

.method public removeFromParent()Lcom/smartisanos/smengine/SceneNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->removeChild(Lcom/smartisanos/smengine/SceneNode;)I

    return-object p0
.end method

.method public render(Lcom/smartisanos/smengine/Ga;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/y;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderTarget:Lcom/smartisanos/smengine/N;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/smengine/N;->create()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/N;->bind()V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const v0, 0x8d40

    .line 5
    invoke-static {v0, v1}, Lcom/smartisanos/smengine/P;->glBindFramebuffer(II)V

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mViewPort:Lcom/smartisanos/smengine/Ga;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Rs()I

    move-result p1

    .line 8
    iget-object p2, p0, Lcom/smartisanos/smengine/SceneNode;->mViewPort:Lcom/smartisanos/smengine/Ga;

    invoke-virtual {p2}, Lcom/smartisanos/smengine/Ga;->Ss()I

    move-result p2

    .line 9
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mViewPort:Lcom/smartisanos/smengine/Ga;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Qs()I

    move-result v0

    .line 10
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mViewPort:Lcom/smartisanos/smengine/Ga;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ga;->Ps()I

    move-result v2

    .line 11
    invoke-static {p1, p2, v0, v2}, Lcom/smartisanos/smengine/P;->glViewport(IIII)V

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ga;->Rs()I

    move-result p2

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ga;->Ss()I

    move-result v0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ga;->Qs()I

    move-result v2

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ga;->Ps()I

    move-result p1

    invoke-static {p2, v0, v2, p1}, Lcom/smartisanos/smengine/P;->glViewport(IIII)V

    .line 13
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mRUParam:Lcom/smartisanos/smengine/K;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result p2

    iput p2, p1, Lcom/smartisanos/smengine/K;->layer:I

    .line 14
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderState:Lcom/smartisanos/smengine/L;

    iget-object p2, p0, Lcom/smartisanos/smengine/SceneNode;->mRUParam:Lcom/smartisanos/smengine/K;

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/L;->a(Lcom/smartisanos/smengine/K;)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/mymaterial/f;->create()V

    .line 16
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    iget-object p2, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-virtual {p1, v1, p2}, Lcom/smartisanos/smengine/mymaterial/f;->c(ILjava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    iget-object p2, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p2, p2, v0

    invoke-virtual {p1, v0, p2}, Lcom/smartisanos/smengine/mymaterial/f;->c(ILjava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    iget-object p2, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object p2, p2, v1

    invoke-virtual {p1, v1, p2}, Lcom/smartisanos/smengine/mymaterial/f;->c(ILjava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    iget-object p2, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object p2, p2, v2

    invoke-virtual {p1, v2, p2}, Lcom/smartisanos/smengine/mymaterial/f;->c(ILjava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    iget-object p2, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object p2, p2, v3

    invoke-virtual {p1, v3, p2}, Lcom/smartisanos/smengine/mymaterial/f;->c(ILjava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    iget-object p2, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object p2, p2, v4

    invoke-virtual {p1, v4, p2}, Lcom/smartisanos/smengine/mymaterial/f;->c(ILjava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    iget-object p2, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object p2, p2, v4

    invoke-virtual {p1, v4, p2}, Lcom/smartisanos/smengine/mymaterial/f;->c(ILjava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    iget-object p2, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object p2, p2, v4

    invoke-virtual {p1, v4, p2}, Lcom/smartisanos/smengine/mymaterial/f;->c(ILjava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getWorldMatrix()Lcom/smartisanos/smengine/a/f;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/mymaterial/f;->h(Lcom/smartisanos/smengine/a/f;)V

    .line 25
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/k;->Wj()Lcom/smartisanos/smengine/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 26
    iget-object p2, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    iget v4, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p2, v4, v5, p1}, Lcom/smartisanos/smengine/mymaterial/f;->k(FFF)V

    .line 27
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->et()Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 28
    iget-object p2, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    iget v4, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p2, v4, v5, p1}, Lcom/smartisanos/smengine/mymaterial/f;->l(FFF)V

    .line 29
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    iget-object p2, p0, Lcom/smartisanos/smengine/SceneNode;->mLightColor:Lcom/smartisanos/smengine/a/k;

    iget v4, p2, Lcom/smartisanos/smengine/a/k;->x:F

    iget v5, p2, Lcom/smartisanos/smengine/a/k;->y:F

    iget v6, p2, Lcom/smartisanos/smengine/a/k;->z:F

    iget p2, p2, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {p1, v4, v5, v6, p2}, Lcom/smartisanos/smengine/mymaterial/f;->i(FFFF)V

    .line 30
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    const/16 p2, 0x24

    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ra;->pt()F

    move-result v4

    iget v5, p0, Lcom/smartisanos/smengine/SceneNode;->mAdjustForShadowLen:F

    mul-float/2addr v4, v5

    invoke-virtual {p1, p2, v4}, Lcom/smartisanos/smengine/mymaterial/f;->i(IF)V

    .line 31
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    const/16 p2, 0x25

    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ra;->qt()F

    move-result v4

    invoke-virtual {p1, p2, v4}, Lcom/smartisanos/smengine/mymaterial/f;->i(IF)V

    .line 32
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    const/16 p2, 0x23

    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ra;->getShadowRadius()F

    move-result v4

    invoke-virtual {p1, p2, v4}, Lcom/smartisanos/smengine/mymaterial/f;->i(IF)V

    .line 33
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    const/16 p2, 0x26

    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/Ra;->mc(I)Lcom/smartisanos/smengine/a/k;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/smartisanos/smengine/mymaterial/f;->b(ILcom/smartisanos/smengine/a/k;)V

    .line 34
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    const/16 p2, 0x27

    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ra;->mc(I)Lcom/smartisanos/smengine/a/k;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/smartisanos/smengine/mymaterial/f;->b(ILcom/smartisanos/smengine/a/k;)V

    .line 35
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    const/16 p2, 0x28

    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/Ra;->mc(I)Lcom/smartisanos/smengine/a/k;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/smartisanos/smengine/mymaterial/f;->b(ILcom/smartisanos/smengine/a/k;)V

    .line 36
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    const/16 p2, 0x29

    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/Ra;->mc(I)Lcom/smartisanos/smengine/a/k;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/smartisanos/smengine/mymaterial/f;->b(ILcom/smartisanos/smengine/a/k;)V

    .line 37
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object p2

    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderState:Lcom/smartisanos/smengine/L;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/L;->Pk()Z

    move-result v0

    invoke-virtual {p1, p0, p2, v0}, Lcom/smartisanos/smengine/mymaterial/f;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/y;Z)V

    .line 38
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderState:Lcom/smartisanos/smengine/L;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/L;->restore()V

    :cond_5
    :goto_2
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 2
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    goto :goto_1

    .line 3
    :cond_2
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    .line 4
    :goto_1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    if-eqz p0, :cond_3

    .line 5
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    return-void
.end method

.method public resortChildren(Ljava/util/Comparator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public setAdjustForShadowLen(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mAdjustForShadowLen:F

    return-void
.end method

.method public setAnimationState(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mCurrentAnimationState:I

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 4
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setAnimationState(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBlendColor(FFFF)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 v0, 0x15

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/a/k;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iput p1, v1, Lcom/smartisanos/smengine/a/k;->x:F

    .line 6
    iput p2, v1, Lcom/smartisanos/smengine/a/k;->y:F

    .line 7
    iput p3, v1, Lcom/smartisanos/smengine/a/k;->z:F

    .line 8
    iput p4, v1, Lcom/smartisanos/smengine/a/k;->w:F

    :cond_1
    :goto_0
    return-void
.end method

.method public setCamera(Lcom/smartisanos/smengine/Camera;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mSelfCamera:Lcom/smartisanos/smengine/Camera;

    return-void
.end method

.method public setCameraMatrixToShader(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->nSetCameraMatrixDataToShader(JI)V

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    and-int/lit16 p1, p1, -0x4001

    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    :goto_0
    return-void
.end method

.method public setCollideAlways(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/SceneNode;->mCollideAlways:Z

    return-void
.end method

.method public setCollideListener(Lcom/smartisanos/smengine/V;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mCollideListener:Lcom/smartisanos/smengine/V;

    return-void
.end method

.method public setColor(FFFF)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/a/k;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iput p1, v1, Lcom/smartisanos/smengine/a/k;->x:F

    .line 6
    iput p2, v1, Lcom/smartisanos/smengine/a/k;->y:F

    .line 7
    iput p3, v1, Lcom/smartisanos/smengine/a/k;->z:F

    .line 8
    iput p4, v1, Lcom/smartisanos/smengine/a/k;->w:F

    :cond_1
    :goto_0
    return-void
.end method

.method protected setCulled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/SceneNode;->mIsCulled:Z

    return-void
.end method

.method public setDepthTestFunc(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderState:Lcom/smartisanos/smengine/L;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/L;->setDepthTestFunc(I)V

    return-void
.end method

.method public setDisableCollideDetect()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->mNeedDetectCollide:Z

    return-void
.end method

.method public setDisplayUpdate()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mUpdateFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mUpdateFlags:I

    return-void
.end method

.method public setDoubleTapListener(Lcom/smartisanos/smengine/W;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mDoubleTapListener:Lcom/smartisanos/smengine/W;

    return-void
.end method

.method public setDragPoint(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mDragPointX:F

    .line 2
    iput p2, p0, Lcom/smartisanos/smengine/SceneNode;->mDragPointY:F

    return-void
.end method

.method public setFixedCenter(Lcom/smartisanos/smengine/a/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mFixedCenter:Lcom/smartisanos/smengine/a/j;

    return-void
.end method

.method public setForceDispatchTouchToView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/SceneNode;->mForceDispatchTouchToView:Z

    return-void
.end method

.method public setImageName(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    return-void
.end method

.method public setInnerShadowAlphaRange_H(FFFF)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 v0, 0xa

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/a/k;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iput p1, v1, Lcom/smartisanos/smengine/a/k;->x:F

    .line 6
    iput p2, v1, Lcom/smartisanos/smengine/a/k;->y:F

    .line 7
    iput p3, v1, Lcom/smartisanos/smengine/a/k;->z:F

    .line 8
    iput p4, v1, Lcom/smartisanos/smengine/a/k;->w:F

    goto :goto_0

    .line 9
    :cond_1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "Material is null !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setInnerShadowAlphaRange_V(FFFF)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 v0, 0xc

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/a/k;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iput p1, v1, Lcom/smartisanos/smengine/a/k;->x:F

    .line 6
    iput p2, v1, Lcom/smartisanos/smengine/a/k;->y:F

    .line 7
    iput p3, v1, Lcom/smartisanos/smengine/a/k;->z:F

    .line 8
    iput p4, v1, Lcom/smartisanos/smengine/a/k;->w:F

    goto :goto_0

    .line 9
    :cond_1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "Material is null !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setInnerShadowSize_H(FFFF)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 v0, 0x9

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/a/k;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iput p1, v1, Lcom/smartisanos/smengine/a/k;->x:F

    .line 6
    iput p2, v1, Lcom/smartisanos/smengine/a/k;->y:F

    .line 7
    iput p3, v1, Lcom/smartisanos/smengine/a/k;->z:F

    .line 8
    iput p4, v1, Lcom/smartisanos/smengine/a/k;->w:F

    goto :goto_0

    .line 9
    :cond_1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "Material is null !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setInnerShadowSize_V(FFFF)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 v0, 0xb

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/a/k;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iput p1, v1, Lcom/smartisanos/smengine/a/k;->x:F

    .line 6
    iput p2, v1, Lcom/smartisanos/smengine/a/k;->y:F

    .line 7
    iput p3, v1, Lcom/smartisanos/smengine/a/k;->z:F

    .line 8
    iput p4, v1, Lcom/smartisanos/smengine/a/k;->w:F

    goto :goto_0

    .line 9
    :cond_1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "Material is null !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setInteractionState(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mCurrentInteractionState:I

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 4
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setInteractionState(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIsEnableBlend(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderState:Lcom/smartisanos/smengine/L;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    return-void
.end method

.method public setIsEnableDepthTest(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderState:Lcom/smartisanos/smengine/L;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    return-void
.end method

.method public setIsUpdateBoundingVolume(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/SceneNode;->mIsUpdateBoundingVolume:Z

    return-void
.end method

.method public setLayer(I)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    const/16 v1, 0x104

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layer > 260  or < 0 error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "name is ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    if-lt p1, v1, :cond_3

    const/16 p1, 0x103

    .line 3
    :cond_3
    :goto_0
    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mLayer:I

    return-void
.end method

.method public setLayer(IZ)V
    .locals 3

    .line 4
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    const/4 v1, 0x0

    const/16 v2, 0x104

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    if-ge p1, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layer > 260  or < 0 error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "name is ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-gez p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    if-lt p1, v2, :cond_3

    const/16 p1, 0x103

    .line 6
    :cond_3
    :goto_0
    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mLayer:I

    if-eqz p2, :cond_4

    .line 7
    iget-object p2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_1
    if-ge v1, p2, :cond_4

    .line 8
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/SceneNode;

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, p1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setLocalBoundingVolume(FFFF)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/smartisanos/smengine/SceneNode;->nSetLocalBoundingVolume(JFFFF)V

    return-void
.end method

.method public setLocalTranslateDataToShader(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->nSetLocalTranslateDataToShader(JI)V

    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    const/high16 v0, 0x200000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    const v0, -0x200001

    and-int/2addr p1, v0

    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    :goto_0
    return-void
.end method

.method public setLongPressListener(Lcom/smartisanos/smengine/Y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mLongPressListener:Lcom/smartisanos/smengine/Y;

    return-void
.end method

.method protected setMVPMatrixArrayNum(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMatrixArrayNum:I

    .line 2
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->nSetMVPMatrixArrayNum(JI)V

    return-void
.end method

.method public setMVPMatrixArrayToShader(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->nSetMVPMatrixArrayDataToShader(JI)V

    return-void
.end method

.method public setMVPMatrixToShader(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->nSetMVPMatrixDataToShader(JI)V

    return-void
.end method

.method public setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    return-void
.end method

.method public setMesh(Lcom/smartisanos/smengine/y;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/y;->Ck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/y;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/y;->za(Z)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/y;

    return-void
.end method

.method public setModelSpaceLightDirArrayDataToShader(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->nSetModelSpaceLightDirDataToShader(JI)V

    return-void
.end method

.method public setMotionEventSplittingEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    const/high16 v0, 0x200000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    const v0, -0x200001

    and-int/2addr p1, v0

    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    :goto_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mName:Ljava/lang/String;

    return-void
.end method

.method public setNativeData(Lcom/smartisanos/smengine/Camera;)V
    .locals 0

    return-void
.end method

.method public setNeedDisplay()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setDisplayUpdate()V

    return-void
.end method

.method public setOnClickListener(Lcom/smartisanos/smengine/aa;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setClickable(Z)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getListenerInfo()Lcom/smartisanos/smengine/X;

    move-result-object p0

    iput-object p1, p0, Lcom/smartisanos/smengine/X;->mOnClickListener:Lcom/smartisanos/smengine/aa;

    return-void
.end method

.method public setOnLongClickListener(Lcom/smartisanos/smengine/ba;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLongClickable(Z)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getListenerInfo()Lcom/smartisanos/smengine/X;

    move-result-object p0

    iput-object p1, p0, Lcom/smartisanos/smengine/X;->mOnLongClickListener:Lcom/smartisanos/smengine/ba;

    return-void
.end method

.method public setOnTouchListener(Lcom/smartisanos/smengine/ca;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getListenerInfo()Lcom/smartisanos/smengine/X;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/smartisanos/smengine/X;->a(Lcom/smartisanos/smengine/X;Lcom/smartisanos/smengine/ca;)Lcom/smartisanos/smengine/ca;

    return-void
.end method

.method public setParent(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    return-void
.end method

.method public setPressed(Z)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz p1, :cond_2

    .line 2
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    goto :goto_2

    .line 3
    :cond_2
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    :goto_2
    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->refreshDrawableState()V

    .line 5
    :cond_3
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->dispatchSetPressed(Z)V

    return-void
.end method

.method public setRenderQueue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderQueue:I

    return-void
.end method

.method public setRenderQueue(IZ)V
    .locals 1

    .line 2
    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderQueue:I

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/SceneNode;

    .line 5
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRenderTarget(Lcom/smartisanos/smengine/N;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderTarget:Lcom/smartisanos/smengine/N;

    return-void
.end method

.method public setRotation(FLcom/smartisanos/smengine/a/j;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/a/h;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/h;->getRotation()Lcom/smartisanos/smengine/a/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/smengine/a/g;->a(FLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/g;

    .line 2
    iget-wide v1, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget v4, p2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, p2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v6, p2, Lcom/smartisanos/smengine/a/j;->z:F

    move v3, p1

    invoke-static/range {v1 .. v6}, Lcom/smartisanos/smengine/SceneNode;->nSetRotation(JFFFF)V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setTransformUpdate()V

    return-void
.end method

.method public setScale(FFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/a/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/smengine/a/h;->setScale(FFF)Lcom/smartisanos/smengine/a/h;

    .line 2
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->nSetScale(JFFF)V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setTransformUpdate()V

    return-void
.end method

.method public setScaleListener(Lcom/smartisanos/smengine/ea;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleListener:Lcom/smartisanos/smengine/ea;

    return-void
.end method

.method public setScaleRotatePivot(FFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/a/j;

    iput p1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 2
    iput p2, v0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 3
    iput p3, v0, Lcom/smartisanos/smengine/a/j;->z:F

    .line 4
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->nSetScaleRotatePivot(JFFF)V

    return-void
.end method

.method public setScaleRotatePivot(Lcom/smartisanos/smengine/a/j;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/a/j;

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iput v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 6
    iget v1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iput v1, v0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 7
    iget v1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    iput v1, v0, Lcom/smartisanos/smengine/a/j;->z:F

    .line 8
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget p0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-static {v0, v1, p0, v2, p1}, Lcom/smartisanos/smengine/SceneNode;->nSetScaleRotatePivot(JFFF)V

    return-void
.end method

.method public setSceneNodeForceRender(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/SceneNode;->mForceRenderTag:Z

    return-void
.end method

.method public setScissor(ZIIIIZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderState:Lcom/smartisanos/smengine/L;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/L;->Ha(Z)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderState:Lcom/smartisanos/smengine/L;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/smartisanos/smengine/L;->d(IIII)V

    if-eqz p6, :cond_0

    const/4 p6, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p6, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    const/4 v7, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 5
    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/smengine/SceneNode;->setScissor(ZIIIIZ)V

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSingleTapListener(Lcom/smartisanos/smengine/fa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mSingleTapListener:Lcom/smartisanos/smengine/fa;

    return-void
.end method

.method public setSkewX(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/a/h;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/a/h;->setSkewX(F)V

    return-void
.end method

.method public setSkewY(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/a/h;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/a/h;->setSkewY(F)V

    return-void
.end method

.method public setSubLayer(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mSubLayer:I

    return-void
.end method

.method public setTextureName(ILjava/lang/String;)V
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    aput-object p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setTouchDownListener(Lcom/smartisanos/smengine/ga;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchDownListener:Lcom/smartisanos/smengine/ga;

    return-void
.end method

.method public setTouchListener(Lcom/smartisanos/smengine/ha;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchListener:Lcom/smartisanos/smengine/ha;

    return-void
.end method

.method public setTransformUpdate()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mUpdateFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mUpdateFlags:I

    return-void
.end method

.method public setTranslate(FFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/a/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/smengine/a/h;->f(FFF)Lcom/smartisanos/smengine/a/h;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/a/j;

    iput p1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 3
    iput p2, v0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 4
    iput p3, v0, Lcom/smartisanos/smengine/a/j;->z:F

    .line 5
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->nSetTranslate(JFFF)V

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setTransformUpdate()V

    return-void
.end method

.method public setTranslatePivot(FFF)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTranslatePivot:Lcom/smartisanos/smengine/a/j;

    iput p1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 6
    iput p2, v0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 7
    iput p3, v0, Lcom/smartisanos/smengine/a/j;->z:F

    .line 8
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->nSetTranslatePivot(JFFF)V

    return-void
.end method

.method public setTranslatePivot(Lcom/smartisanos/smengine/a/j;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTranslatePivot:Lcom/smartisanos/smengine/a/j;

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iput v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 2
    iget v1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iput v1, v0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 3
    iget v1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    iput v1, v0, Lcom/smartisanos/smengine/a/j;->z:F

    .line 4
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget p0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-static {v0, v1, p0, v2, p1}, Lcom/smartisanos/smengine/SceneNode;->nSetTranslatePivot(JFFF)V

    return-void
.end method

.method public setTranslateX(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/a/h;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/a/h;->setTranslationX(F)Lcom/smartisanos/smengine/a/h;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/a/j;

    iput p1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 3
    iget-wide v1, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-static {v1, v2, p1, v3, v0}, Lcom/smartisanos/smengine/SceneNode;->nSetTranslate(JFFF)V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setTransformUpdate()V

    return-void
.end method

.method public setTranslateY(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/a/h;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/a/h;->setTranslationY(F)Lcom/smartisanos/smengine/a/h;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/a/j;

    iput p1, v0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 3
    iget-wide v1, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-static {v1, v2, v3, p1, v0}, Lcom/smartisanos/smengine/SceneNode;->nSetTranslate(JFFF)V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setTransformUpdate()V

    return-void
.end method

.method public setTranslateZ(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/a/h;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/a/h;->setTranslationZ(F)Lcom/smartisanos/smengine/a/h;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/a/j;

    iput p1, v0, Lcom/smartisanos/smengine/a/j;->z:F

    .line 3
    iget-wide v1, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-static {v1, v2, v3, v0, p1}, Lcom/smartisanos/smengine/SceneNode;->nSetTranslate(JFFF)V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setTransformUpdate()V

    return-void
.end method

.method public setUserInteractionEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/SceneNode;->mUserInteractionEnable:Z

    return-void
.end method

.method public setViewPort(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mViewPort:Lcom/smartisanos/smengine/Ga;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/Ga;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/Ga;-><init>(IIII)V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mViewPort:Lcom/smartisanos/smengine/Ga;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/Ga;->setViewPort(IIII)V

    :goto_0
    return-void
.end method

.method public setViewPort(Lcom/smartisanos/smengine/Ga;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mViewPort:Lcom/smartisanos/smengine/Ga;

    return-void
.end method

.method public setVisibility(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/SceneNode;->mIsVisible:Z

    return-void
.end method

.method public setWorldMatrixToShader(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->nSetWorldMatrixDataToShader(JI)V

    return-void
.end method

.method public travel(Lcom/smartisanos/smengine/Z;)V
    .locals 2

    .line 1
    invoke-interface {p1, p0}, Lcom/smartisanos/smengine/Z;->a(Lcom/smartisanos/smengine/SceneNode;)V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 4
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->travel(Lcom/smartisanos/smengine/Z;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 0

    return-void
.end method

.method public updateGeometricState()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->isClear:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateWorldTransforms()V

    .line 3
    iget-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->mIsUpdateBoundingVolume:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateWorldBoundingVolume()V

    :cond_1
    return-void
.end method

.method public updateLayer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/SceneNode;

    .line 3
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateLayer()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateLayer(I)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/SceneNode;

    .line 6
    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->updateLayer(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected updateLocalTransform()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/smartisanos/smengine/d/f;->qY:Lcom/smartisanos/smengine/a/k;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 4
    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/a/j;

    iget v4, v3, Lcom/smartisanos/smengine/a/j;->x:F

    cmpl-float v4, v4, v2

    if-nez v4, :cond_0

    iget v4, v3, Lcom/smartisanos/smengine/a/j;->y:F

    cmpl-float v4, v4, v2

    if-nez v4, :cond_0

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->z:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_1

    .line 5
    :cond_0
    iget-object v2, v0, Lcom/smartisanos/smengine/d/f;->wY:Lcom/smartisanos/smengine/a/f;

    .line 6
    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/a/h;

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/f;)Lcom/smartisanos/smengine/a/f;

    .line 7
    iget-object v3, v0, Lcom/smartisanos/smengine/d/f;->rY:Lcom/smartisanos/smengine/a/k;

    .line 8
    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/a/j;

    iget v5, v4, Lcom/smartisanos/smengine/a/j;->x:F

    neg-float v5, v5

    iput v5, v3, Lcom/smartisanos/smengine/a/k;->x:F

    .line 9
    iget v5, v4, Lcom/smartisanos/smengine/a/j;->y:F

    neg-float v5, v5

    iput v5, v3, Lcom/smartisanos/smengine/a/k;->y:F

    .line 10
    iget v4, v4, Lcom/smartisanos/smengine/a/j;->z:F

    neg-float v4, v4

    iput v4, v3, Lcom/smartisanos/smengine/a/k;->z:F

    const/high16 v4, 0x3f800000    # 1.0f

    .line 11
    iput v4, v3, Lcom/smartisanos/smengine/a/k;->w:F

    .line 12
    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/smengine/a/f;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/a/k;

    .line 13
    iget v2, v1, Lcom/smartisanos/smengine/a/k;->x:F

    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/a/j;

    iget v4, v3, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v2, v4

    iput v2, v1, Lcom/smartisanos/smengine/a/k;->x:F

    .line 14
    iget v2, v1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v4, v3, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v2, v4

    iput v2, v1, Lcom/smartisanos/smengine/a/k;->y:F

    .line 15
    iget v2, v1, Lcom/smartisanos/smengine/a/k;->z:F

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->z:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/smartisanos/smengine/a/k;->z:F

    .line 16
    :cond_1
    iget v2, v1, Lcom/smartisanos/smengine/a/k;->x:F

    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNode;->mTranslatePivot:Lcom/smartisanos/smengine/a/j;

    iget v4, v3, Lcom/smartisanos/smengine/a/j;->x:F

    neg-float v4, v4

    add-float/2addr v2, v4

    iput v2, v1, Lcom/smartisanos/smengine/a/k;->x:F

    .line 17
    iget v2, v1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v4, v3, Lcom/smartisanos/smengine/a/j;->y:F

    neg-float v4, v4

    add-float/2addr v2, v4

    iput v2, v1, Lcom/smartisanos/smengine/a/k;->y:F

    .line 18
    iget v2, v1, Lcom/smartisanos/smengine/a/k;->z:F

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->z:F

    neg-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Lcom/smartisanos/smengine/a/k;->z:F

    .line 19
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/a/j;

    .line 20
    iget v3, v1, Lcom/smartisanos/smengine/a/k;->x:F

    iget v4, v2, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v3, v4

    iput v3, v1, Lcom/smartisanos/smengine/a/k;->x:F

    .line 21
    iget v3, v1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v4, v2, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v3, v4

    iput v3, v1, Lcom/smartisanos/smengine/a/k;->y:F

    .line 22
    iget v3, v1, Lcom/smartisanos/smengine/a/k;->z:F

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->z:F

    add-float/2addr v3, v2

    iput v3, v1, Lcom/smartisanos/smengine/a/k;->z:F

    .line 23
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/a/h;

    iget v2, v1, Lcom/smartisanos/smengine/a/k;->x:F

    iget v3, v1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v1, v1, Lcom/smartisanos/smengine/a/k;->z:F

    invoke-virtual {p0, v2, v3, v1}, Lcom/smartisanos/smengine/a/h;->f(FFF)Lcom/smartisanos/smengine/a/h;

    .line 24
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    return-void
.end method

.method public updateMesh(Lcom/smartisanos/smengine/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/y;

    return-void
.end method

.method public updateSelfWorldBoundingVolume()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    iget-wide v2, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->nUpdateWorldBoundingVolume(JJ)V

    return-void
.end method

.method public updateSelfWorldTranform()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    if-nez p0, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->nUpdateWorldTransforms(JJ)V

    return-void
.end method

.method public updateWorldBoundingVolume()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    iget-wide v2, v2, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->nUpdateWorldBoundingVolume(JJ)V

    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateWorldBoundingVolume()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public updateWorldTransforms()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iget-wide v2, v2, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->nUpdateWorldTransforms(JJ)V

    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateWorldTransforms()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 7

    const-string v0, "SceneNode"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mName:Ljava/lang/String;

    const-string v1, "mName"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/a/h;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/a/h;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mLocalTransform"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mWorldTransform:Lcom/smartisanos/smengine/a/h;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/a/h;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mWorldTransform"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    const-string v1, "null"

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v2, "mParent"

    invoke-interface {v0, v2, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mTranslatePivot:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/a/j;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "mTranslatePivot"

    invoke-interface {v0, v2, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/a/j;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "mScaleRotatePivot"

    invoke-interface {v0, v2, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/a/j;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "mLocalTranslate"

    invoke-interface {v0, v2, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/smartisanos/smengine/SceneNode;->mLayer:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "mLayer"

    invoke-interface {v0, v3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/smartisanos/smengine/SceneNode;->mSubLayer:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "mLocalLayer"

    invoke-interface {v0, v3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderTarget:Lcom/smartisanos/smengine/N;

    if-nez p1, :cond_1

    move-object p1, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/N;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v3, "mRenderTarget"

    invoke-interface {v0, v3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mViewPort:Lcom/smartisanos/smengine/Ga;

    if-nez p1, :cond_2

    move-object p1, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ga;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    const-string v3, "mViewPort"

    invoke-interface {v0, v3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderQueue:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "mRenderQueue"

    invoke-interface {v0, v3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/f;

    if-nez p1, :cond_3

    move-object p1, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/mymaterial/f;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_3
    const-string v3, "mMaterial"

    invoke-interface {v0, v3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/y;

    if-nez p1, :cond_4

    move-object p1, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/y;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_4
    const-string v3, "mMeshData"

    invoke-interface {v0, v3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v4, p1, v3

    const-string v5, "mTextureMapName_DIFFUSE"

    if-eqz v4, :cond_5

    aget-object p1, p1, v3

    invoke-static {p1}, Lcom/smartisanos/smengine/Da;->_a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 18
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    aget-object p1, p1, v3

    invoke-static {p1}, Lcom/smartisanos/smengine/Da;->Ya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-interface {v0, v5, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    aget-object v4, p1, v3

    if-eqz v4, :cond_6

    aget-object p1, p1, v3

    goto :goto_5

    :cond_6
    move-object p1, v1

    :goto_5
    invoke-interface {v0, v5, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/smartisanos/smengine/SceneNode;->mUserInteractionEnable:Z

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "mUserInteractionEnable"

    invoke-interface {v0, v4, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/smartisanos/smengine/SceneNode;->mCollideAlways:Z

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "mCollideAlways"

    invoke-interface {v0, v4, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalBoundingVolume:Lcom/smartisanos/smengine/j;

    if-nez p1, :cond_7

    move-object p1, v1

    goto :goto_7

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_7
    const-string v4, "mLocalBoundingVolume"

    invoke-interface {v0, v4, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mWorldBoundingVolume:Lcom/smartisanos/smengine/j;

    if-nez p1, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_8
    const-string p1, "mWorldBoundingVolume"

    invoke-interface {v0, p1, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mWorldMatrix:Lcom/smartisanos/smengine/a/f;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/a/f;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mWorldMatrix"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smartisanos/smengine/SceneNode;->mForceRenderTag:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mForceRenderTag"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smartisanos/smengine/SceneNode;->mIsVisible:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mIsVisible"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/smengine/SceneNode;->mCurrentInteractionState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mCurrentInteractionState"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/smengine/SceneNode;->mCurrentAnimationState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mCurrentAnimationState"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smartisanos/smengine/SceneNode;->mIsUpdateBoundingVolume:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mIsUpdateBoundingVolume"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderState:Lcom/smartisanos/smengine/L;

    invoke-virtual {p1, v0, p2}, Lcom/smartisanos/smengine/L;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    const-string p1, "Children-Index"

    .line 32
    invoke-interface {p2, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    move v1, v3

    .line 33
    :goto_9
    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_9

    const-string v4, "child"

    .line 34
    invoke-interface {p2, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 35
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "index"

    invoke-interface {v4, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v5, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-interface {v4, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 38
    :cond_9
    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string p1, "Children"

    .line 39
    invoke-interface {p2, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 40
    :goto_a
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_a

    .line 41
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 42
    invoke-virtual {v1, p1, p2}, Lcom/smartisanos/smengine/SceneNode;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 43
    :cond_a
    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method
