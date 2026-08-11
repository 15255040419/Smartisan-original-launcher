package com.smartisanos.launcher.quicksearch.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

/** Minimal two-row subset of pristine QuickSearch FlowLayoutEx. */
public final class HistoryFlowLayoutCompat extends ViewGroup {
    private int childSpacing;
    private int rowSpacing;
    private int maxRows = 2;

    public HistoryFlowLayoutCompat(Context context) {
        super(context);
    }

    public HistoryFlowLayoutCompat(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public void configure(int childSpacing, int rowSpacing, int maxRows) {
        this.childSpacing = Math.max(0, childSpacing);
        this.rowSpacing = Math.max(0, rowSpacing);
        this.maxRows = Math.max(1, maxRows);
        requestLayout();
    }

    @Override protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int width = MeasureSpec.getSize(widthMeasureSpec);
        int available = Math.max(0, width - getPaddingLeft() - getPaddingRight());
        int row = 0;
        int used = 0;
        int rowHeight = 0;
        int totalHeight = 0;
        for (int i = 0; i < getChildCount(); i++) {
            View child = getChildAt(i);
            if (child.getVisibility() == GONE) continue;
            measureChildWithMargins(child, widthMeasureSpec, 0, heightMeasureSpec, totalHeight);
            MarginLayoutParams lp = (MarginLayoutParams) child.getLayoutParams();
            int childWidth = child.getMeasuredWidth() + lp.leftMargin + lp.rightMargin;
            int childHeight = child.getMeasuredHeight() + lp.topMargin + lp.bottomMargin;
            int required = used == 0 ? childWidth : childSpacing + childWidth;
            if (used > 0 && used + required > available) {
                totalHeight += rowHeight + (row == 0 ? 0 : rowSpacing);
                row++;
                used = 0;
                rowHeight = 0;
                required = childWidth;
            }
            if (row >= maxRows) break;
            used += required;
            rowHeight = Math.max(rowHeight, childHeight);
        }
        if (row < maxRows && rowHeight > 0) {
            totalHeight += rowHeight + (row == 0 ? 0 : rowSpacing);
        }
        totalHeight += getPaddingTop() + getPaddingBottom();
        setMeasuredDimension(resolveSize(width, widthMeasureSpec),
                resolveSize(totalHeight, heightMeasureSpec));
    }

    @Override protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        int available = Math.max(0, right - left - getPaddingLeft() - getPaddingRight());
        int x = 0;
        int y = getPaddingTop();
        int row = 0;
        int rowHeight = 0;
        for (int i = 0; i < getChildCount(); i++) {
            View child = getChildAt(i);
            if (child.getVisibility() == GONE) continue;
            MarginLayoutParams lp = (MarginLayoutParams) child.getLayoutParams();
            int childWidth = child.getMeasuredWidth() + lp.leftMargin + lp.rightMargin;
            int childHeight = child.getMeasuredHeight() + lp.topMargin + lp.bottomMargin;
            int required = x == 0 ? childWidth : childSpacing + childWidth;
            if (x > 0 && x + required > available) {
                y += rowHeight + rowSpacing;
                row++;
                x = 0;
                rowHeight = 0;
                required = childWidth;
            }
            if (row >= maxRows) {
                child.layout(0, 0, 0, 0);
                continue;
            }
            if (x > 0) x += childSpacing;
            int childLeft = getPaddingLeft() + x + lp.leftMargin;
            int childTop = y + lp.topMargin;
            child.layout(childLeft, childTop, childLeft + child.getMeasuredWidth(),
                    childTop + child.getMeasuredHeight());
            x += childWidth;
            rowHeight = Math.max(rowHeight, childHeight);
        }
    }

    @Override protected LayoutParams generateDefaultLayoutParams() {
        return new MarginLayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
    }

    @Override public LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new MarginLayoutParams(getContext(), attrs);
    }

    @Override protected LayoutParams generateLayoutParams(LayoutParams params) {
        return new MarginLayoutParams(params);
    }

    @Override protected boolean checkLayoutParams(LayoutParams params) {
        return params instanceof MarginLayoutParams;
    }
}
