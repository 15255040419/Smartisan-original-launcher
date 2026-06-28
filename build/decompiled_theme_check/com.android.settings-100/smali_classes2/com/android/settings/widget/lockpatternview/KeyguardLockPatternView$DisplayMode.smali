.class public final enum Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;
.super Ljava/lang/Enum;
.source "KeyguardLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

.field public static final enum Animate:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

.field public static final enum Correct:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

.field public static final enum Wrong:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 212
    new-instance v0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    const/4 v1, 0x0

    const-string v2, "Correct"

    invoke-direct {v0, v2, v1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;->Correct:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    .line 217
    new-instance v0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    const/4 v2, 0x1

    const-string v3, "Animate"

    invoke-direct {v0, v3, v2}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;->Animate:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    .line 222
    new-instance v0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    const/4 v3, 0x2

    const-string v4, "Wrong"

    invoke-direct {v0, v4, v3}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;->Wrong:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    .line 207
    sget-object v4, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;->Correct:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;->Animate:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;->Wrong:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;->$VALUES:[Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 207
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;
    .locals 1

    .line 207
    const-class v0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;
    .locals 1

    .line 207
    sget-object v0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;->$VALUES:[Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    invoke-virtual {v0}, [Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    return-object v0
.end method
